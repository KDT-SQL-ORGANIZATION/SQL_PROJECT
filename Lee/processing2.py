import pymysql
def null_update(conn, cur):

    tables = ["h2013", "h2015", "h2017", "h2019"]
    for i in tables:
        cur.execute(f'''select * from {i}''')
        for j in cur.description:
            try:
                sql = f'''update {i} set {j[0]} = "0" where {j[0]} = "-";'''
                cur.execute(sql)
                print(sql)
            except:
                continue
        print()
    conn.commit()

    # , -> 공백으로 변환
    for i in tables:
        cur.execute(f'''select * from {i}''')
        for j in cur.description:
            try:
                sql = f'''UPDATE {i} SET {j[0]} = REPLACE({j[0]}, ',', '');'''
                cur.execute(sql)
                # print(sql)
            except:
                continue

    conn.commit()

    # 숫자로 형변환
    for i in tables:
        cur.execute(f'''select * from {i}''')
        # 시도 군구는 형변환 x
        for j in cur.description[1:]:
            try:
                sql = f'''ALTER TABLE {i} MODIFY COLUMN {j[0]} INT;'''
                cur.execute(sql)
                # print(sql)
            except:
                continue
    conn.commit()


def main():
    conn = pymysql.connect(host='localhost', user='root', password='1234',
                           db = 'hospital2', charset='utf8')

    cur = conn.cursor()
    # 사용자 정보 입력 (user_table)

    null_update(conn, cur)

    conn.commit()
    # 연결 종료
    cur.close()
    conn.close()

main()