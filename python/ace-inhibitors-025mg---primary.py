# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"10148001","system":"gprdproduct"},{"code":"10340001","system":"gprdproduct"},{"code":"10341002","system":"gprdproduct"},{"code":"10709001","system":"gprdproduct"},{"code":"10711001","system":"gprdproduct"},{"code":"11069001","system":"gprdproduct"},{"code":"11637001","system":"gprdproduct"},{"code":"11922001","system":"gprdproduct"},{"code":"1201011","system":"gprdproduct"},{"code":"13138001","system":"gprdproduct"},{"code":"1363010","system":"gprdproduct"},{"code":"1408011","system":"gprdproduct"},{"code":"14219001","system":"gprdproduct"},{"code":"1655010","system":"gprdproduct"},{"code":"1818009","system":"gprdproduct"},{"code":"1820009","system":"gprdproduct"},{"code":"2031009","system":"gprdproduct"},{"code":"2176009","system":"gprdproduct"},{"code":"2213009","system":"gprdproduct"},{"code":"2230010","system":"gprdproduct"},{"code":"2295009","system":"gprdproduct"},{"code":"2300009","system":"gprdproduct"},{"code":"2441009","system":"gprdproduct"},{"code":"2774009","system":"gprdproduct"},{"code":"2831010","system":"gprdproduct"},{"code":"2862009","system":"gprdproduct"},{"code":"3028009","system":"gprdproduct"},{"code":"3075009","system":"gprdproduct"},{"code":"3104010","system":"gprdproduct"},{"code":"3140009","system":"gprdproduct"},{"code":"3297009","system":"gprdproduct"},{"code":"3316002","system":"gprdproduct"},{"code":"4383009","system":"gprdproduct"},{"code":"4732002","system":"gprdproduct"},{"code":"4837001","system":"gprdproduct"},{"code":"4838001","system":"gprdproduct"},{"code":"4978002","system":"gprdproduct"},{"code":"4985001","system":"gprdproduct"},{"code":"4988001","system":"gprdproduct"},{"code":"5011009","system":"gprdproduct"},{"code":"5016009","system":"gprdproduct"},{"code":"5026009","system":"gprdproduct"},{"code":"5036009","system":"gprdproduct"},{"code":"5040009","system":"gprdproduct"},{"code":"5046009","system":"gprdproduct"},{"code":"5070001","system":"gprdproduct"},{"code":"5070002","system":"gprdproduct"},{"code":"5071009","system":"gprdproduct"},{"code":"5365001","system":"gprdproduct"},{"code":"5366001","system":"gprdproduct"},{"code":"5429002","system":"gprdproduct"},{"code":"5532009","system":"gprdproduct"},{"code":"5577001","system":"gprdproduct"},{"code":"5578009","system":"gprdproduct"},{"code":"5697009","system":"gprdproduct"},{"code":"5719009","system":"gprdproduct"},{"code":"6077009","system":"gprdproduct"},{"code":"6131009","system":"gprdproduct"},{"code":"6177009","system":"gprdproduct"},{"code":"6307002","system":"gprdproduct"},{"code":"6308002","system":"gprdproduct"},{"code":"6657009","system":"gprdproduct"},{"code":"6694009","system":"gprdproduct"},{"code":"6780002","system":"gprdproduct"},{"code":"6790001","system":"gprdproduct"},{"code":"7096001","system":"gprdproduct"},{"code":"7097001","system":"gprdproduct"},{"code":"7133001","system":"gprdproduct"},{"code":"721011","system":"gprdproduct"},{"code":"830011","system":"gprdproduct"},{"code":"932002","system":"gprdproduct"},{"code":"954001","system":"gprdproduct"},{"code":"9982001","system":"gprdproduct"},{"code":"9983001","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-025mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-025mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-025mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
