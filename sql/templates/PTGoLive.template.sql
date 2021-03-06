delete from egf_accountcodepurpose where tenantid = 'pb.__city__';
delete from egf_chartofaccount where tenantid = 'pb.__city__';
delete from egf_instrumentaccountcode where tenantid = 'pb.__city__';
delete from egf_instrumenttype where tenantid = 'pb.__city__';
delete from egbs_taxperiod where tenantid = 'pb.__city__';
delete from egbs_glcodemaster where tenantid = 'pb.__city__';
delete from egbs_business_service_details where tenantid = 'pb.__city__';
delete from egbs_taxheadmaster where tenantid = 'pb.__city__';
delete from egf_bankaccount where tenantid = 'pb.__city__';
delete from egf_bankbranch where tenantid = 'pb.__city__';

delete from egf_bank where tenantid = 'pb.__city__';
delete from egf_fund where tenantid = 'pb.__city__';

-- Data for Name: egf_accountcodepurpose; Type: TABLE DATA; Schema: public; Owner: egovuat
INSERT INTO egf_accountcodepurpose (id, name, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_accountcodepurpose'), 'Cheque In Hand', NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_accountcodepurpose (id, name, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_accountcodepurpose'), 'Demand Draft In Hand', NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_accountcodepurpose (id, name, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_accountcodepurpose'), 'Online', NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_accountcodepurpose (id, name, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_accountcodepurpose'), 'Cash In Hand', NULL, now(), NULL, now(), NULL, 'pb.__city__');
-- Data for Name: egf_chartofaccount; Type: TABLE DATA; Schema: public; Owner: egovuat
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '1', 'Income', NULL, NULL, false, NULL, 'I', 0, false, false, NULL, false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '2', 'Expenses', NULL, NULL, false, NULL, 'E', 0, false, false, NULL, false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '3', 'Liabilities', NULL, NULL, false, NULL, 'L', 0, false, false, NULL, false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '4', 'Assets', NULL, NULL, false, NULL, 'A', 0, false, false, NULL, false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '450', 'Cash and Bank balance', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '4' and tenantid='pb.__city__'), 'A', 1, false, false, NULL, false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '45010', 'Cash-Cash', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '450' and tenantid='pb.__city__'), 'A', 2, false, false, '450', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '45021', 'Nationalised Banks', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '450' and tenantid='pb.__city__'), 'A', 2, false, false, '450', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '4501001', 'Cash-Cash On Hand', (select id from egf_accountcodepurpose where tenantid = 'pb.__city__' and name = 'Cash In Hand'), NULL, true, (select id from egf_chartofaccount where glcode = '45010' and tenantid='pb.__city__'), 'A', 4, false, false, '450', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '4501002', 'Cash-Cash In Transit', (select id from egf_accountcodepurpose where tenantid = 'pb.__city__' and name = 'Cash In Hand'), NULL, true, (select id from egf_chartofaccount where glcode = '45010' and tenantid='pb.__city__'), 'A', 4, false, false, '450', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '4501051', 'Cash-Cheques-in-hand', (select id from egf_accountcodepurpose where tenantid = 'pb.__city__' and name = 'Cheque In Hand') , NULL, true, (select id from egf_chartofaccount where glcode = '45010' and tenantid='pb.__city__'), 'A', 4, false, false, '450', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '4502104', 'Nationalised Banks-Axis Bank', (select id from egf_accountcodepurpose where tenantid = 'pb.__city__' and name = 'Online'), NULL, true, (select id from egf_chartofaccount where glcode = '45021' and tenantid='pb.__city__'), 'A', 4, false, false, '450', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '110', 'Tax Revenue', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '1' and tenantid='pb.__city__'), 'I', 1, false, false, '110', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '11001', 'Property Tax', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '110' and tenantid='pb.__city__'), 'I', 2, false, false, '110', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '1100101', 'Property-General Tax', NULL, NULL, true, (select id from egf_chartofaccount where glcode = '11001' and tenantid='pb.__city__'), 'I', 4, false, false, '110', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '171', 'Interest Earned', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '1' and tenantid='pb.__city__'), 'I', 1, false, false, '171', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '17180', 'Interest Earned-Other Interest', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '171' and tenantid='pb.__city__'), 'I', 2, false, false, '171', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '1718001', 'Interest or Penalty', NULL, NULL, true, (select id from egf_chartofaccount where glcode = '17180' and tenantid='pb.__city__'), 'I', 4, false, false, '171', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '270', 'Provisions and Write off', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '2' and tenantid='pb.__city__'), 'E', 1, false, false, '270', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '27030', 'Provisions and Write off-Revenues written of', NULL, NULL, false, (select id from egf_chartofaccount where glcode = '270' and tenantid='pb.__city__'), 'E', 2, false, false, '270', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
INSERT INTO egf_chartofaccount (id, glcode, name, accountcodepurposeid, description, isactiveforposting, parentid, type, classification, functionrequired, budgetcheckrequired, majorcode, issubledger, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_chartofaccount'), '2703001', 'Write off - Property Tax', NULL, NULL, true, (select id from egf_chartofaccount where glcode = '27030' and tenantid='pb.__city__'), 'E', 4, false, false, '270', false, NULL, now(), NULL, now(), NULL, 'pb.__city__');
-- Data for Name: egf_fiscalperiod; Type: TABLE DATA; Schema: public; Owner: egovuat

-- Data for Name: egf_instrumenttype; Type: TABLE DATA; Schema: public; Owner: egovuat
INSERT INTO egf_instrumenttype (id, name, description, active, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES (uuid_in(md5(random()::text || now()::text)::cstring), 'Cheque', 'Instrument for Cheque payments', true, '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumenttype (id, name, description, active, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES (uuid_in(md5(random()::text || now()::text)::cstring), 'Cash', 'Instrument for Cash payments', true, '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumenttype (id, name, description, active, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES (uuid_in(md5(random()::text || now()::text)::cstring), 'Online', 'Instrument for Online payments', true, '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumenttype (id, name, description, active, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES (uuid_in(md5(random()::text || now()::text)::cstring), 'BankChallan', 'Instrument for BankChallan payments', true, '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumenttype (id, name, description, active, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES (uuid_in(md5(random()::text || now()::text)::cstring), 'Card', 'Instrument for Card payment', true, '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumenttype (id, name, description, active, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES (uuid_in(md5(random()::text || now()::text)::cstring), 'DD', 'Instrument for Demand Draft payments', true, '94', now(), '94', now(), 'pb.__city__', NULL);









-- Data for Name: egf_instrumentaccountcode; Type: TABLE DATA; Schema: public; Owner: egovuat
INSERT INTO egf_instrumentaccountcode (id, instrumenttypeid, accountcodeid, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES ((select id from egf_instrumenttype where tenantid = 'pb.__city__' and name = 'Cheque'), 'Cheque', '4501051', '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumentaccountcode (id, instrumenttypeid, accountcodeid, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES ((select id from egf_instrumenttype where tenantid = 'pb.__city__' and name = 'Cash'), 'Cash', '4501051', '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumentaccountcode (id, instrumenttypeid, accountcodeid, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES ((select id from egf_instrumenttype where tenantid = 'pb.__city__' and name = 'Online'), 'Online', '4501051', '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumentaccountcode (id, instrumenttypeid, accountcodeid, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES ((select id from egf_instrumenttype where tenantid = 'pb.__city__' and name = 'BankChallan'), 'BankChallan', '4501051', '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumentaccountcode (id, instrumenttypeid, accountcodeid, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES ((select id from egf_instrumenttype where tenantid = 'pb.__city__' and name = 'Card') , 'Card', '4501051', '94', now(), '94', now(), 'pb.__city__', NULL);
INSERT INTO egf_instrumentaccountcode (id, instrumenttypeid, accountcodeid, createdby, createddate, lastmodifiedby, lastmodifieddate, tenantid, version) VALUES ((select id from egf_instrumenttype where tenantid = 'pb.__city__' and name = 'DD'), 'DD', '4501051', '94', now(), '94', now(), 'pb.__city__', NULL);
-- Data for Name: egf_bank; Type: TABLE DATA; Schema: public; Owner: egovuat
-- Data for Name: egf_financialconfiguration; Type: TABLE DATA; Schema: public; Owner: egovuat
-- Data for Name: egf_fund; Type: TABLE DATA; Schema: public; Owner: egovuat

INSERT INTO egf_fund (id, name, code, identifier, level, parentid, active, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_fund'), 'Muncipal Fund', '01', '1', 0, NULL, true, NULL, now(), NULL, now(), NULL, 'pb.__city__');
-- Data for Name: egf_instrumenttypeproperty; Type: TABLE DATA; Schema: public; Owner: egovuat
-- Data for Name: egf_surrenderreason; Type: TABLE DATA; Schema: public; Owner: egovuat
-- Data for Name: egf_bankaccount; Type: TABLE DATA; Schema: public; Owner: egovuat
INSERT INTO egf_bank (id, code, name, description, active, type, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_bank'), 'AXIS', 'AXIS BANK', '', true, '', NULL, now(), NULL, now(), NULL, 'pb.__city__');

INSERT INTO egf_bankbranch (id, bankid, code, name, address, address2, city, state, pincode, phone, fax, contactperson, active, description, micr, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES (nextval('seq_egf_bankbranch'), (select id from egf_bank where tenantid ='pb.__city__' and code = 'AXIS'), '__bankbranchcode__', 'Axis_Bank_Ltd___city__', '__city__', NULL, '__city__', 'Punjab', NULL, '__contact__', NULL, '__contact_person__', true, NULL, NULL, NULL, now(), NULL, now(), NULL, 'pb.__city__');


INSERT INTO egf_bankaccount (id, bankbranchid, chartofaccountid, fundid, accountnumber, accounttype, description, active, payto, type, createdby, createddate, lastmodifiedby, lastmodifieddate, version, tenantid) VALUES ('2', (select id from egf_bankbranch where tenantid ='pb.__city__' and code = 'AXIS') , (select id from egf_chartofaccount where glcode = '4502104' and tenantid='pb.__city__'), (select id from egf_fund where tenantid ='pb.__city__' and code = '01'), '__account_number__', 'SAVINGS', NULL, true, NULL, 'RECEIPTS_PAYMENTS', NULL, now(), NULL, now(), NULL, 'pb.__city__');

INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'PENALTY', 'PT', 'Pt adhoc penalty', 'PT_ADHOC_PENALTY', false, true, 1, 1143849600000, 1554076799000, '94', 1535112204756, '94', 1535112204756);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'REBATE', 'PT', 'Pt adhoc rebate', 'PT_ADHOC_REBATE', true, true, 100, 1143849600000, 1554076799000, '94', 1535112204756, '94', 1535112204756);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'EXEMPTION', 'PT', 'Pt advance carry forward from old cancelled demand', 'PT_ADVANCE_CARRYFORWARD', true, true, 100, 1143849600000, 1554076799000, '94', 1535112204756, '94', 1535112204756);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'TAX', 'PT', 'propertytax', 'PT_TAX', false, true, 3, 1143849600000, 1554076799000, '94', 1535112204756, '94', 1535112204756);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'EXEMPTION', 'PT', 'Pt Unit usage exemption', 'PT_UNIT_USAGE_EXEMPTION', true, true, 100, 1143849600000, 1554076799000, '94', 1535112204756, '94', 1535112204756);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'EXEMPTION', 'PT', 'Pt owner exemption', 'PT_OWNER_EXEMPTION', true, true, 100, 1143849600000, 1554076799000, '94', 1535112204756, '94', 1535112204756);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'TAX', 'PT', 'Pt fire cess', 'PT_FIRE_CESS', false, true, 2, 1143849600000, 1554076799000, '94', 1535112204757, '94', 1535112204757);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'PENALTY', 'PT', 'Pt time interest', 'PT_TIME_INTEREST', false, true, 0, 1143849600000, 1554076799000, '94', 1535112204757, '94', 1535112204757);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'PENALTY', 'PT', 'Pt time based penalty', 'PT_TIME_PENALTY', false, true, 1, 1143849600000, 1554076799000, '94', 1535112204757, '94', 1535112204757);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'REBATE', 'PT', 'Pt time based rebate', 'PT_TIME_REBATE', true, true, 100, 1143849600000, 1554076799000, '94', 1535112204757, '94', 1535112204757);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'TAX', 'PT', 'Pt decimal ceiling credit', 'PT_DECIMAL_CEILING_CREDIT', false, true, 99, 1143849600000, 1554076799000, '94', 1535112204758, '94', 1535112204758);
INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'REBATE', 'PT', 'Pt decimal ceiling debit', 'PT_DECIMAL_CEILING_DEBIT', true, true, 100, 1143849600000, 1554076799000, '94', 1535112204758, '94', 1535112204758);

INSERT INTO egbs_taxheadmaster (id, tenantid, category, service, name, code, isdebit, isactualdemand, orderno, validfrom, validtill, createdby, createdtime, lastmodifiedby, lastmodifiedtime) VALUES (nextval('seq_egbs_taxheadmaster'), 'pb.__city__', 'TAX', 'PT', 'Pt cancer cess', 'PT_CANCER_CESS', false, true, 3, 1143849600000, 1554076799000, '94', 1535112204758, '94', 1535112204758);


-- Data for Name: egbs_billaccountdetail; Type: TABLE DATA; Schema: public; Owner: egovuat
-- Data for Name: egbs_business_service_details; Type: TABLE DATA; Schema: public; Owner: egovuat
INSERT INTO egbs_business_service_details (id, businessservice, collectionmodesnotallowed, callbackforapportioning, partpaymentallowed, callbackapportionurl, createddate, lastmodifieddate, createdby, lastmodifiedby, tenantid) VALUES (uuid_in(md5(random()::text || now()::text)::cstring), 'PT', '', false, true, NULL, 1535111604186, 1535111604186, '94', '94', 'pb.__city__');
-- Data for Name: egbs_demand; Type: TABLE DATA; Schema: public; Owner: egovuat

-- Data for Name: egbs_glcodemaster; Type: TABLE DATA; Schema: public; Owner: egovuat
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_ADVANCE_CARRYFORWARD', 'PT', 1143849600000, 1554076799000, '94', 1535114942488, '94', 1535114942488, '1100101');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_TAX', 'PT', 1143849600000, 1554076799000, '94', 1535114942488, '94', 1535114942488, '1100101');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_UNIT_USAGE_EXEMPTION', 'PT', 1143849600000, 1554076799000, '94', 1535114942489, '94', 1535114942489, '2703001');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_OWNER_EXEMPTION', 'PT', 1143849600000, 1554076799000, '94', 1535114942489, '94', 1535114942489, '2703001');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_FIRE_CESS', 'PT', 1143849600000, 1554076799000, '94', 1535114942489, '94', 1535114942489, '1100101');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_TIME_REBATE', 'PT', 1143849600000, 1554076799000, '94', 1535114942490, '94', 1535114942490, '2703001');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_TIME_PENALTY', 'PT', 1143849600000, 1554076799000, '94', 1535114942491, '94', 1535114942491, '1718001');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_TIME_INTEREST', 'PT', 1143849600000, 1554076799000, '94', 1535114942491, '94', 1535114942491, '1718001');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_ADHOC_PENALTY', 'PT', 1143849600000, 1554076799000, '94', 1535114942491, '94', 1535114942491, '1718001');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_ADHOC_REBATE', 'PT', 1143849600000, 1554076799000, '94', 1535114942492, '94', 1535114942492, '2703001');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_DECIMAL_CEILING_CREDIT', 'PT', 1143849600000, 1554076799000, '94', 1535114942492, '94', 1535114942492, '1718001');
INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_DECIMAL_CEILING_DEBIT', 'PT', 1143849600000, 1554076799000, '94', 1535114942492, '94', 1535114942492, '2703001');

INSERT INTO egbs_glcodemaster (id, tenantid, taxhead, service, fromdate, todate, createdby, createdtime, lastmodifiedby, lastmodifiedtime, glcode) VALUES (nextval('seq_egbs_glcodemaster'), 'pb.__city__', 'PT_CANCER_CESS', 'PT', 1143849600000, 1554076799000, '94', 1535114942492, '94', 1535114942492, '1100101');


-- Data for Name: egbs_taxperiod; Type: TABLE DATA; Schema: public; Owner: egovuat
INSERT INTO egbs_taxperiod (id, service, code, fromdate, todate, financialyear, createddate, lastmodifieddate, createdby, lastmodifiedby, tenantid, periodcycle) VALUES (nextval('seq_egbs_taxperiod'), 'PT', 'PTAN2014-15', 1396310400000, 1427846399000, '2014-15', 1535112115829, 1535112115829, '94', '94', 'pb.__city__', 'ANNUAL');
INSERT INTO egbs_taxperiod (id, service, code, fromdate, todate, financialyear, createddate, lastmodifieddate, createdby, lastmodifiedby, tenantid, periodcycle) VALUES (nextval('seq_egbs_taxperiod'), 'PT', 'PTAN2015-16', 1427846400000, 1459468799000, '2015-16', 1535112115833, 1535112115833, '94', '94', 'pb.__city__', 'ANNUAL');
INSERT INTO egbs_taxperiod (id, service, code, fromdate, todate, financialyear, createddate, lastmodifieddate, createdby, lastmodifiedby, tenantid, periodcycle) VALUES (nextval('seq_egbs_taxperiod'), 'PT', 'PTAN2016-17', 1459468800000, 1491004799000, '2016-17', 1535112115833, 1535112115833, '94', '94', 'pb.__city__', 'ANNUAL');
INSERT INTO egbs_taxperiod (id, service, code, fromdate, todate, financialyear, createddate, lastmodifieddate, createdby, lastmodifiedby, tenantid, periodcycle) VALUES (nextval('seq_egbs_taxperiod'), 'PT', 'PTAN2017-18', 1491004800000, 1522540799000, '2017-18', 1535112115833, 1535112115833, '94', '94', 'pb.__city__', 'ANNUAL');
INSERT INTO egbs_taxperiod (id, service, code, fromdate, todate, financialyear, createddate, lastmodifieddate, createdby, lastmodifiedby, tenantid, periodcycle) VALUES (nextval('seq_egbs_taxperiod'), 'PT', 'PTAN2018-19', 1522540800000, 1554076799000, '2018-19', 1535112115833, 1535112115833, '94', '94', 'pb.__city__', 'ANNUAL');


INSERT INTO egbs_taxperiod (id, service, code, fromdate, todate, financialyear, createddate, lastmodifieddate, createdby, lastmodifiedby, tenantid, periodcycle) VALUES (nextval('seq_egbs_taxperiod'), 'PT', 'PTAN2019-20', 1554076800000, 1585699199000, '2019-20', 1535112115833, 1535112115833, '94', '94', 'pb.__city__', 'ANNUAL');
INSERT INTO egbs_taxperiod (id, service, code, fromdate, todate, financialyear, createddate, lastmodifieddate, createdby, lastmodifiedby, tenantid, periodcycle) VALUES (nextval('seq_egbs_taxperiod'), 'PT', 'PTAN2020-21', 1585699200000, 1617235199000, '2020-21', 1535112115833, 1535112115833, '94', '94', 'pb.__city__', 'ANNUAL');


delete from eg_business_accountdetails where businessdetails in (select id from eg_businessdetails where code in ('CS','PT','WT','WC') and tenantid='pb.__city__');
delete from eg_businessdetails where code in ('CS','PT','WT','WC') and tenantid='pb.__city__';
delete from eg_businesscategory where code in ('CS','PT','WT','WC') and tenantid='pb.__city__';

INSERT INTO eg_businesscategory(
          id, name, code, active, tenantid, version, createdby, createddate, 
          lastmodifiedby, lastmodifieddate)
  VALUES (nextval('seq_eg_businesscategory'),'Citizen Services','CS',true,'pb.__city__',0,1,(select extract ('epoch' from (select * from now()))*1000), 
          1, (select extract ('epoch' from (select * from now()))*1000));

INSERT INTO eg_businessdetails(
          id, name, businessurl, isenabled, code, businesstype, fund, function, 
          fundsource, functionary, department, vouchercreation, businesscategory, 
          isvoucherapproved, vouchercutoffdate, createddate, lastmodifieddate, 
          createdby, lastmodifiedby, ordernumber, version, tenantid, callbackforapportioning)
  VALUES (nextval('seq_eg_businessdetails'), 'Citizen Services', '/receipts/receipt-create.action', true, 'CS','B','01','909100',null,null,'AS',false,(select id from eg_businesscategory where code='CS' and tenantid='pb.__city__'),false,null,(select extract ('epoch' from (select * from now()))*1000),(select extract ('epoch' from (select * from now()))*1000),1,1,1,0,'pb.__city__',false);


INSERT INTO eg_businesscategory(
          id, name, code, active, tenantid, version, createdby, createddate, 
          lastmodifiedby, lastmodifieddate)
  VALUES (nextval('seq_eg_businesscategory'),'Water Charges','WC',true,'pb.__city__',0,1,(select extract ('epoch' from (select * from now()))*1000), 
          1, (select extract ('epoch' from (select * from now()))*1000));

INSERT INTO eg_businesscategory(
          id, name, code, active, tenantid, version, createdby, createddate, 
          lastmodifiedby, lastmodifieddate)
  VALUES (nextval('seq_eg_businesscategory'),'Property Tax','PT',true,'pb.__city__',0,1,(select extract ('epoch' from (select * from now()))*1000), 
          1, (select extract ('epoch' from (select * from now()))*1000));
          
INSERT INTO eg_businessdetails(
          id, name, businessurl, isenabled, code, businesstype, fund, function, 
          fundsource, functionary, department, vouchercreation, businesscategory, 
          isvoucherapproved, vouchercutoffdate, createddate, lastmodifieddate, 
          createdby, lastmodifiedby, ordernumber, version, tenantid, callbackforapportioning)
  VALUES (nextval('seq_eg_businessdetails'), 'Water Charges', '/receipts/receipt-create.action', true, 'WC','B','01','505100',null,null,'AS',false,(select id from eg_businesscategory where code='WC' and tenantid='pb.__city__'),false,null,(select extract ('epoch' from (select * from now()))*1000),(select extract ('epoch' from (select * from now()))*1000),1,1,1,0,'pb.__city__',false);

INSERT INTO eg_businessdetails(
          id, name, businessurl, isenabled, code, businesstype, fund, function, 
          fundsource, functionary, department, vouchercreation, businesscategory, 
          isvoucherapproved, vouchercutoffdate, createddate, lastmodifieddate, 
          createdby, lastmodifiedby, ordernumber, version, tenantid, callbackforapportioning)
  VALUES (nextval('seq_eg_businessdetails'), 'Property Tax', '/receipts/receipt-create.action', true, 'PT','B','01','909100',null,null,'AS',false,(select id from eg_businesscategory where code='PT' and tenantid='pb.__city__'),false,null,(select extract ('epoch' from (select * from now()))*1000),(select extract ('epoch' from (select * from now()))*1000),1,1,1,0,'pb.__city__',false);

INSERT INTO public.eg_role (id, "name", code, description, createddate, createdby, lastmodifiedby, lastmodifieddate, "version", tenantid) VALUES
(nextval('seq_eg_role'),'Property Tax Counter Employee','PTCEMP','Employee at the counter who performs assessment on behalf of citizen',now(),1,1,now(),0,'pb.__city__') ON CONFLICT (code, tenantid) DO NOTHING;

INSERT INTO public.eg_role (id, "name", code, description, createddate, createdby, lastmodifiedby, lastmodifieddate, "version", tenantid) VALUES
(nextval('seq_eg_role'),'Property Tax Field Employee','PTFEMP','Employee on the field',now(),1,1,now(),0,'pb.__city__') ON CONFLICT (code, tenantid) DO NOTHING;;
INSERT INTO public.eg_role (id, "name", code, description, createddate, createdby, lastmodifiedby, lastmodifieddate, "version", tenantid) VALUES
(nextval('seq_eg_role'), 'Property Tax ULB Administrator','PTULBADMIN','Admin role that as access over an ulb',now(),1,1,now(),0,'pb.__city__') ON CONFLICT (code, tenantid) DO NOTHING;;
INSERT INTO public.eg_role (id, "name", code, description, createddate, createdby, lastmodifiedby, lastmodifieddate, "version", tenantid) VALUES
(nextval('seq_eg_role'), 'Property Tax State Administrator','PTSTADMIN','Admin role that as access over a state',now(),1,1,now(),0,'pb.__city__') ON CONFLICT (code, tenantid) DO NOTHING;