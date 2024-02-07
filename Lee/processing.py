import pymysql
def null_update(conn, cur):
    tables = ["h2018", "h2019", "h2020", "h2021", "h2022", "h2023"]
    # tables = ["h2023"]
    for i in tables:
        cur.execute(f'''select * from {i}''')
        for j in cur.description:
            sql = f'''update {i} set {j[0]} = "0" where {j[0]} = "-";'''
            # cur.execute(sql)
            # print(sql)
        print()
    conn.commit()

    for i in tables:
        cur.execute(f'''select * from {i}''')
        for j in cur.description:
            sql = f'''update {i} set 시도 = "강원특별자치도" where 시도 = " ";'''
            # cur.execute(sql)
            # print(sql)
    conn.commit()

    for i in tables:
        cur.execute(f'''select * from {i}''')
        for j in cur.description:
            sql = f'''UPDATE {i}
SET {j[0]} = REPLACE({j[0]}, ',', '');'''
            # cur.execute(sql)
            # print(sql)
    conn.commit()

    # 숫자로 형변환
    for i in tables:
        cur.execute(f'''select * from {i}''')
        # 시도 군구는 형변환 x
        for j in cur.description[2:]:
            sql = f'''ALTER TABLE {i} MODIFY COLUMN {j[0]} SMALLINT UNSIGNED;'''
            # cur.execute(sql)
            # print(sql)
    conn.commit()


def main():
    conn = pymysql.connect(host='localhost', user='root', password='1234',
                           db = 'hospital', charset='utf8')

    cur = conn.cursor()
    # 사용자 정보 입력 (user_table)
    '''
    row = cur.execute('select * from user_table')
    if cur.rowcount == 0:
        insert_user_table(conn, cur)
    else:
        print('user_table 데이터:{} 개'.format(row))

    # buy_table 정보 입력 (buy_table)
    row = cur.execute('select * from buy_table')
    if cur.rowcount == 0:
        insert_buy_table(conn, cur)
    else:
        print('buy_table 데이터:{} 개'.format(row))
    '''
    null_update(conn, cur)

    conn.commit()
    # 연결 종료
    cur.close()
    conn.close()

main()