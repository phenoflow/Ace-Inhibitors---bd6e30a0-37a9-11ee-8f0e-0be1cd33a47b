# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"10340002","system":"gprdproduct"},{"code":"10340003","system":"gprdproduct"},{"code":"10341003","system":"gprdproduct"},{"code":"10343001","system":"gprdproduct"},{"code":"10343002","system":"gprdproduct"},{"code":"1036001","system":"gprdproduct"},{"code":"1038001","system":"gprdproduct"},{"code":"13948001","system":"gprdproduct"},{"code":"1905009","system":"gprdproduct"},{"code":"2877002","system":"gprdproduct"},{"code":"3092001","system":"gprdproduct"},{"code":"3135009","system":"gprdproduct"},{"code":"3156009","system":"gprdproduct"},{"code":"3650009","system":"gprdproduct"},{"code":"3651009","system":"gprdproduct"},{"code":"3653009","system":"gprdproduct"},{"code":"3662009","system":"gprdproduct"},{"code":"3675009","system":"gprdproduct"},{"code":"3680009","system":"gprdproduct"},{"code":"3705009","system":"gprdproduct"},{"code":"3707009","system":"gprdproduct"},{"code":"3710009","system":"gprdproduct"},{"code":"3723009","system":"gprdproduct"},{"code":"3756009","system":"gprdproduct"},{"code":"3981009","system":"gprdproduct"},{"code":"4234001","system":"gprdproduct"},{"code":"4234002","system":"gprdproduct"},{"code":"4484001","system":"gprdproduct"},{"code":"4838002","system":"gprdproduct"},{"code":"4985002","system":"gprdproduct"},{"code":"4987001","system":"gprdproduct"},{"code":"4987002","system":"gprdproduct"},{"code":"4988002","system":"gprdproduct"},{"code":"5041009","system":"gprdproduct"},{"code":"5216001","system":"gprdproduct"},{"code":"5577002","system":"gprdproduct"},{"code":"5692009","system":"gprdproduct"},{"code":"5726009","system":"gprdproduct"},{"code":"5843001","system":"gprdproduct"},{"code":"6704007","system":"gprdproduct"},{"code":"8115001","system":"gprdproduct"},{"code":"8673001","system":"gprdproduct"},{"code":"9080001","system":"gprdproduct"},{"code":"9081001","system":"gprdproduct"},{"code":"932003","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-375mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-375mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-375mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
