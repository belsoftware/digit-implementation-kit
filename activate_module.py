activate = True

tenants = ["testing"]

# tenants = ["Shahkot", "Handiaya", "Lalru", "Dasuya", "Sultanpur Lodhi", "Zirakpur"]
tenants = ["AdampurZZ", "Alawalpur", "Bassi Pathana", "Bhogpur", "Hariana", "Sham Churasi", "Sunam", "Urmar Tanda"]

# module = "PGR"
module = "TL"
# tenants = ["testing"]
tenants = [
"pb.lalru",
"pb.lohiankhas",
"pb.ludhiana",
"pb.machhiwara",
"pb.mahilpur",
"pb.mandigobindgarh",
"pb.mansa",
"pb.moga",
"pb.morinda",
"pb.mukerian",
"pb.muktsar",
"pb.mullanpur",
"pb.nabha",
"pb.nangal",
"pb.nawanshahr",
"pb.nihalsinghwala",
"pb.patran",
"pb.patti",
"pb.payal",
"pb.phagwara",
"pb.quadian",
"pb.raikot",
"pb.raman",
"pb.ropar",
"pb.samrala",
"pb.shahkot",
"pb.sirhind",
"pb.srihargobindpur",
"pb.sultanpurlodhi",
"pb.sunam",
"pb.tapa",
"pb.urmartanda",
"pb.zira",
]
import json
from config import config

with open(config.TENANT_JSON, mode="r") as f:
    tenants_data = json.load(f)

tenant_codes = set()
for tenant in tenants_data["tenants"]:
    tenant_codes.add(tenant["code"])

with open(config.CITY_MODULES_JSON, mode="r") as f:
    data = json.load(f)

found = False
for m in data["citymodule"]:
    if m["code"] == module:
        found = True
        break

if found:
    for tenant in tenants:
        if "pb." not in tenant:
            tenant = "pb." + tenant.lower().replace(" ", "")

        if tenant not in tenant_codes:
            print("Cannot activate tenant. The tenant {} doesn't exists in tenants.json".format(tenant))
            continue

        found = False
        for i, et in enumerate(m["tenants"]):
            if et["code"] == tenant:
                found = True
                break


        if found and activate:
            print("tenant already active - " + tenant + " for module = " + module)
        elif not found and activate:
            print("Activating tenant - " + tenant + " for module = " + module)
            m["tenants"].append({"code": tenant})
        elif not found and not activate:
            print("tenant already deactivated - " + tenant + " for module = " + module)
        else:
            print("tenant deactivated - " + tenant + " for module = " + module)
            m["tenants"].remove(et)

    with open(config.CITY_MODULES_JSON, mode="w") as f:
        json.dump(data, f, indent=2)

else:
    print("Module not found - " + module)
