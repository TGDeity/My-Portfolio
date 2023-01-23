import csv


data1 = """
"""

data2 ="""MBT1002	Matematik II	Z	4/0/0	7
MBT1008	Sayısal Yöntemler	Z	4/0/0	6
FZT2001	Fizik II	Z	2/0/2	7
INS2802	Mühendislikte Çizim	Z	2/2/0	4
ATA2001	Atatürk İlkeleri ve İnkılap Tarihi II	Z	2/0/0	2
TR2001	Türkçe II	Z	2/0/0	2
"""

data3 = """MBT1007	Olasılık ve İstatistiğe Giriş	Z	4/0/0	6
MBT1003	Matematik III	Z	4/0/0	7
INS3701	Malzeme Bilgisi	Z	2/0/0	4
INS3101	Mühendislik Mekaniği	Z	4/2/0	6
"""

data4 = """INS4801	Mühendislik Etiği	Z	2/0/0	2
INS4701	Yapı Malzemesi	Z	2/2/0	4
INS4101	Mukavemet I	Z	4/2/0	7
INS4601	Ölçme Teknikleri	Z	2/2/0	5
MBT1004	Lineer Cebir	Z	4/0/0	6
MBT1005	Diferansiyel Denklemler	Z	4/0/0	6
"""

data5="""INS5102	Mukavemet II	Z	2/2/0	3
INS5201	Zemin Mekaniği I	Z	3/2/0	7
INS5101	Yapı Statiği I	Z	3/2/0	7
INS5301	Akışkanlar Mekaniği	Z	2/2/0	5
INS5501	Yapım Yönetimi	Z	3/0/0	4
"""

data6="""INS6401	Ulaştırma Mühendisliği	Z	2/2/0	4
INS6103	Çelik Yapılar	Z	2/2/0	4
INS6101	Yapı Statiği II	Z	3/2/0	4
INS6102	Betonarme I	Z	3/2/0	6
INS6301	Hidrolik	Z	2/2/0	4
"""

data7="""INS7201	Temeller	Z	2/2/0	5
INS7101	Betonarme II	Z	2/2/0	5
INS7901	Staj I	Z	0/0/0	3
INS7102	Yapı Dinamiği	Z	2/2/0	5
"""

data8="""INS8901	Staj II	Z	0/0/0	3
INS8802	Bitirme Projesi	Z	2/6/0	8
INS8301	Su Temini ve Atıksuların Uzaklaştırılması	Z	3/0/0	3
"""



def get_csv_data(data):
    lines = data.strip().split("\n")
    return [line.split("\t") for line in lines]


def generate_insert_statements(data):
    csv_data = get_csv_data(data)
    insert_statements = []
    for row in csv_data:
        statement = f"INSERT INTO `lessons` (`id`, `lesson_name`, `lesson_id`, `AKTS`,\
         `lesson_type`, `TUL`, `program_name_id`, `year`, `created_at`, `updated_at`)\
          VALUES (NULL, '{row[1]}', '{row[0]}', '{row[4]}', '{row[2]}', '{row[3]}', '6', '1/8', NULL, NULL);"
        insert_statements.append(statement)
    return insert_statements


def write_to_file(statements, file_path):
    with open(file_path, "a",encoding='utf-8') as f:
        for statement in statements:
            f.write(statement + "\n")

insert_statements1 = generate_insert_statements(data1)
write_to_file(insert_statements1, "insert_statements.txt")

