import csv

def get_csv_data(data):
    rows = data.split('\n')
    data = []
    for row in rows:
        data.append(row.split('\t'))
    return data



def write_to_file(statements, filename):
  with open(filename, 'a',encoding='utf-8') as f:
        for statement in statements:
            f.write(statement + '\n')

data1 = """AMY1001	Temel Hukuk Bilgisi I	Z	2/0/0	3
AMY1002	Anayasa Hukuku Bilgisi	Z	2/0/0	3
AMY1003	Medeni Hukuk Bilgisi I	Z	2/0/0	3
AMY1004	Ceza Hukuku Bilgisi I	Z	2/0/0	3
AMY1005	Klavye Kullanımı I	Z	0/4/0	5
ATA1001	Atatürk İlkeleri ve İnkılap Tarihi I	Z	2/0/0	2"""

data2 ="""AMY2001	Temel Hukuk Bilgisi II	Z	2/0/0	3
AMY2002	Medeni Hukuk Bilgisi II	Z	2/0/0	3
AMY2003	Ceza Hukuku Bilgisi II	Z	2/0/0	3
AMY2005	Klavye Kullanımı II	Z	0/4/0	5
ATA2001	Atatürk İlkeleri ve İnkılap Tarihi II	Z	2/0/0	2
TR2001	Türkçe II	Z	2/0/0	2"""

data3 = """AMY3001	Medeni Usul Hukuku Bilgisi I	Z	2/0/0	3
AMY3002	Medeni Hukuk Bilgisi III	Z	2/0/0	3
AMY3003	Ceza Usul Hukuku Bilgisi I	Z	2/0/0	3
AMY3004	İcra ve İflas Hukuku Bilgisi l	Z	2/0/0	3
AMY3005	Klavye Kullanımı lll	Z	0/3/0	4
AMY3006	İdare ve İdari Yargılama Hukuku Bilgisi I	Z	2/0/0	2
AMY3007	Hukuk Dili ve Adli Yazışma l	Z	2/0/0	3"""

data4 = """AMY4001	Medeni Usul Hukuku Bilgisi II	Z	2/0/0	3
AMY4002	Medeni Hukuk Bilgisi IV	Z	2/0/0	3
AMY4003	Ceza Usul Hukuku Bilgisi II	Z	2/0/0	3
AMY4004	İcra ve İflas Hukuku Bilgisi II	Z	2/0/0	3
AMY4005	Klavye Kullanımı IV	Z	0/3/0	4
AMY4006	İdare ve İdari Yargılama Hukuku Bilgisi II	Z	2/0/0	3
AMY 4007	Hukuk Dili ve Adli Yazışma II	Z	2/0/0	3"""

def generate_insert_statements(data):
    insert_statements = []
    for row in data:
        insert_statements.append("""INSERT INTO `lesson_codes` (`id`, `lesson_name`,
`lesson_code`, `AKTS`, `lesson_type`, `T/U/L`, `program_name_id`,`year`, `created_at`, `updated_at`)
VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '5','1/4', NULL, NULL);""".format(row[1], row[0], row[4], row[2], row[3]))
    return insert_statements

def generate_insert_statements1(data):
    insert_statements = []
    for row in data:
        insert_statements.append("""INSERT INTO `lesson_codes` (`id`, `lesson_name`,
`lesson_code`, `AKTS`, `lesson_type`, `T/U/L`, `program_name_id`,`year`, `created_at`, `updated_at`)
VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '5','1/4', NULL, NULL);""".format(row[1], row[0], row[4], row[2], row[3]))
    return insert_statements

def generate_insert_statements2(data):
    insert_statements = []
    for row in data:
        insert_statements.append("""INSERT INTO `lesson_codes` (`id`, `lesson_name`,
`lesson_code`, `AKTS`, `lesson_type`, `T/U/L`, `program_name_id`,`year`, `created_at`, `updated_at`)
VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '5','2/4', NULL, NULL);""".format(row[1], row[0], row[4], row[2], row[3]))
    return insert_statements

def generate_insert_statements3(data):
    insert_statements = []
    for row in data:
        insert_statements.append("""INSERT INTO `lesson_codes` (`id`, `lesson_name`,
`lesson_code`, `AKTS`, `lesson_type`, `T/U/L`, `program_name_id`,`year`, `created_at`, `updated_at`)
VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '5','3/4', NULL, NULL);""".format(row[1], row[0], row[4], row[2], row[3]))
    return insert_statements
def generate_insert_statements4(data):
    insert_statements = []
    for row in data:
        insert_statements.append("""INSERT INTO `lesson_codes` (`id`, `lesson_name`,
`lesson_code`, `AKTS`, `lesson_type`, `T/U/L`, `program_name_id`,`year`, `created_at`, `updated_at`)
VALUES (NULL, '{}', '{}', '{}', '{}', '{}', '5','4/4', NULL, NULL);""".format(row[1], row[0], row[4], row[2], row[3]))
    return insert_statements





data = get_csv_data(data1)
insert_statements = generate_insert_statements1(data)
write_to_file(insert_statements, 'data1.txt')

data = get_csv_data(data2)
insert_statements = generate_insert_statements2(data)
write_to_file(insert_statements, 'data1.txt')

data = get_csv_data(data3)
insert_statements = generate_insert_statements3(data)
write_to_file(insert_statements, 'data1.txt')

data = get_csv_data(data4)
insert_statements = generate_insert_statements4(data)
write_to_file(insert_statements, 'data1.txt')


