import csv

def get_csv_data(data):
    rows = data.split('\n')
    data = []
    for row in rows:
        data.append(row.split('\t'))
    return data

def generate_insert_statements(data):
    insert_statements = []
    for row in data:
        insert_statements.append("""INSERT INTO `lesson_codes` (`id`, `lesson_name`,
`lesson_code`, `AKTS`, `lesson_type`, `T/U/L`, `program_name_id`,`year`, `created_at`, `updated_at`)
VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '1','4/4', NULL, NULL);""".format(row[1], row[0], row[4], row[2], row[3]))
    return insert_statements

def write_to_file(statements, filename):
  with open(filename, 'w',encoding='utf-8') as f:
        for statement in statements:
            f.write(statement + '\n')

data = """Ders Kodu	Ders Adı	Ders Türü	T/U/L	AKTS		
TBP1003	Veri Yapıları	Z	2/0/0	2		Bilgisayara Giriş I
TBP1004	Web Tasarımının Temelleri	Z	2/0/0	3		
TBP1907	Fizik I	Z	2/0/0	4		
BİL1001*	Bilgisayara Giriş I	Z	4/0/0	4		
MBT4001	Temel Matematik I	Z	2/0/2	5		
TBP1001	Algoritma ve Programlama Temelleri	Z	2/0/2	3		
TBP1002	Veri Tabanı ve Yönetimi	Z	2/0/0	2		
ATA1001	Atatürk İlkeleri ve İnkılap Tarihi I	Z	2/0/0	2		
TR1001	Türkçe I	Z	2/0/0	2"""

data2 ="""Ders Kodu	Ders Adı	Ders Türü	T/U/L	AKTS
TBP2001	Nesne Tabanlı Programlama	Z	2/1/0	3
TBP2002	Veri Tabanı Programlama	Z	2/0/0	2
TBP2907	Fizik II	Z	2/2/0	4
MBT4002	Temel Matematik II	Z	2/2/0	5
BİL2001	Bilgisayara Giriş II	Z	4/0/0	4
ATA2001	Atatürk İlkeleri ve İnkılap Tarihi II	Z	2/0/0	2
TR2001	Türkçe II	Z	2/0/0	2 """

data3 ="""Ders Kodu	Ders Adı	Ders Türü	T/U/L	AKTS
TBP3916	İstatistik ve Olasılık	Z	2/1/0	3
TBP3919	Mesleki Yabancı Dil I	Z	2/2/0	4
TBP3002	İnternet Programcılığı	Z	2/1/0	3
TBP3001	Görsel Programlama	Z	2/1/0	3"""

data4="""Ders Kodu	Ders Adı	Ders Türü	T/U/L	AKTS
TBP4919	Mesleki Yabancı Dil II	Z	2/2/0	4
TBP4001	Mobil Programlama	Z	2/1/0	3
TBP4002	Açık Kaynak İşletim Sistemi	Z	2/1/0	3
TBP4903	Bitirme Projesi	Z	2/2/0	4
TBP4918	İşyeri Uygulamaları	Z	0/8/0	8"""
data = get_csv_data(data4)
insert_statements = generate_insert_statements(data)
write_to_file(insert_statements, 'insert_statements4.txt')


