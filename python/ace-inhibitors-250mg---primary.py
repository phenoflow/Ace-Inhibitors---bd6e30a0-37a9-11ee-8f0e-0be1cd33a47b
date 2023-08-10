# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"107001","system":"gprdproduct"},{"code":"11637002","system":"gprdproduct"},{"code":"11862001","system":"gprdproduct"},{"code":"11922002","system":"gprdproduct"},{"code":"1200009","system":"gprdproduct"},{"code":"1201009","system":"gprdproduct"},{"code":"13216001","system":"gprdproduct"},{"code":"13217001","system":"gprdproduct"},{"code":"1349009","system":"gprdproduct"},{"code":"1363009","system":"gprdproduct"},{"code":"1408010","system":"gprdproduct"},{"code":"1516009","system":"gprdproduct"},{"code":"1517009","system":"gprdproduct"},{"code":"1655009","system":"gprdproduct"},{"code":"1699001","system":"gprdproduct"},{"code":"1818010","system":"gprdproduct"},{"code":"1820010","system":"gprdproduct"},{"code":"1856009","system":"gprdproduct"},{"code":"1906009","system":"gprdproduct"},{"code":"2031010","system":"gprdproduct"},{"code":"2109009","system":"gprdproduct"},{"code":"2183002","system":"gprdproduct"},{"code":"2198009","system":"gprdproduct"},{"code":"2213010","system":"gprdproduct"},{"code":"2230009","system":"gprdproduct"},{"code":"2259009","system":"gprdproduct"},{"code":"2272002","system":"gprdproduct"},{"code":"2518001","system":"gprdproduct"},{"code":"2831009","system":"gprdproduct"},{"code":"2862010","system":"gprdproduct"},{"code":"3028010","system":"gprdproduct"},{"code":"3059002","system":"gprdproduct"},{"code":"3075010","system":"gprdproduct"},{"code":"3104009","system":"gprdproduct"},{"code":"3150009","system":"gprdproduct"},{"code":"3316001","system":"gprdproduct"},{"code":"4173001","system":"gprdproduct"},{"code":"4304009","system":"gprdproduct"},{"code":"4382009","system":"gprdproduct"},{"code":"4531009","system":"gprdproduct"},{"code":"4859001","system":"gprdproduct"},{"code":"4978001","system":"gprdproduct"},{"code":"498009","system":"gprdproduct"},{"code":"499009","system":"gprdproduct"},{"code":"5267001","system":"gprdproduct"},{"code":"5273001","system":"gprdproduct"},{"code":"5320001","system":"gprdproduct"},{"code":"539001","system":"gprdproduct"},{"code":"5531009","system":"gprdproduct"},{"code":"5720009","system":"gprdproduct"},{"code":"6437001","system":"gprdproduct"},{"code":"6780001","system":"gprdproduct"},{"code":"7172002","system":"gprdproduct"},{"code":"721009","system":"gprdproduct"},{"code":"722009","system":"gprdproduct"},{"code":"830009","system":"gprdproduct"},{"code":"8673003","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-250mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-250mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-250mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
