import requests
import csv
from common import *
from config import config ,load_employee_creation_config
from common import superuser_login
from config import config
import io
import os
import numpy
import pandas as pd
from datetime import datetime, timedelta
from math import isnan

def main():
    with io.open(config.TAXHEADMASTER_JSON, encoding="utf-8") as f:
        tax_head_data = json.load(f)

    with io.open(config.BUSINESS_SERVICE_JSON, encoding="utf-8") as f:
        business_service_data = json.load(f)
    localization_arr  =[]
    #print(json.dumps(tax_head_data["TaxHeadMaster"], indent=2))
    
    for found_index, service_code in enumerate(business_service_data["BusinessService"]):          
        found = -1 
        if service_code["type"] == "Adhoc":
            code_business_service = service_code["code"] + "_ROUNDOFF" 
            localization_arr.append(code_business_service)
            code_business_service= code_business_service.upper()
            data_object = {
                "category": "CHARGES",
                "service": service_code["code"],
                "name": code_business_service,
                "code": code_business_service,
                "isDebit": False,
                "isActualDemand": False,
                "order": "0",
                "isRequired": False
            }
             
            for found_index1, tax_head in enumerate(tax_head_data["TaxHeadMaster"]):       
                code_tax_head = tax_head["code"]
                code_tax_head= code_tax_head.upper()                
                if code_business_service == code_tax_head:                    
                    found = found_index1
                    break  

            if found > -1:                       
                tax_head_data["TaxHeadMaster"][found] = data_object
            else:  
                #print("Not found")          
                tax_head_data["TaxHeadMaster"].append(data_object)
    with open(config.TAXHEADMASTER_JSON, mode="w", encoding="utf-8") as f:
        json.dump(tax_head_data, f, indent=2,  ensure_ascii=False)
    process_localization_English(localization_arr)
    process_localization_hindi(localization_arr)
    #print("Boundary localization pushed.")
def process_localization_English(localization_arr):    
    load_revenue_boundary_config()    
    locale_data = []  
    for code in localization_arr:        
        locale_data.append({
                        "code": code,
                        "message": "Round Off",
                        "module": "rainmaker-commonpay",
                        "locale": "en_IN"
                    })
        code = code.replace(".","_")
        locale_data.append({
                        "code": code,
                        "message": "Round Off",
                        "module": "rainmaker-uc",
                        "locale": "en_IN"
                    })
    data = {
        "RequestInfo": {
            "authToken": "{{access_token}}"
        },
        "tenantId": "pb",
        "messages": locale_data
    }
    auth_token = superuser_login()["access_token"]
    localize_response = upsert_localization(auth_token, data)    
    print("Pushed for English")
    #print(json.dumps(localize_response, indent=2))

def process_localization_hindi(localization_arr):
    load_revenue_boundary_config()   
    locale_data = []  
    for code in localization_arr :              
        locale_data.append({
                        "code": code,
                        "message": "पूर्णांक",
                        "module": "rainmaker-commonpay",
                        "locale": "hi_IN"
                    }) 
        code = code.replace(".","_")
        locale_data.append({
                        "code": code,
                        "message": "पूर्णांक",
                        "module": "rainmaker-uc",
                        "locale": "hi_IN"
                    })
    data = {
        "RequestInfo": {
            "authToken": "{{access_token}}"
        },
        "tenantId": "pb",
        "messages": locale_data
    }
    auth_token = superuser_login()["access_token"]
    localize_response = upsert_localization(auth_token, data)
    print("Pushed for Hindi")

if __name__ == "__main__":
    main()
