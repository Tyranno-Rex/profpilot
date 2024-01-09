# Description: This is a client test code for checking attendance.
# Result: success for all test case

import requests

def client_add_student(prof_name, lecture_name, student_id, student_name):
    url = "http://localhost:5000/add_student"
    data = {'prof_name': prof_name, 'lecture_title': lecture_name, 
                'student_id': student_id, 'student_name': student_name}
    try:
        response = requests.post(url, json=data)
        response.raise_for_status()
        result = response.json()
        print(result)
        return result
    except requests.exceptions.RequestException as e:
        print(f"Error: {e}")

def client_add_attendance(prof_name, lecture_name, student_id, student_name):
    url = "http://localhost:5000/add_attendance"
    data = {'prof_name': prof_name, 'lecture_title': lecture_name,
                'student_id': student_id, 'student_name': student_name}
    try:
        response = requests.post(url, json=data)
        response.raise_for_status()
        result = response.json()
        print(result)
        return result
    except requests.exceptions.RequestException as e:
        print(f"Error: {e}")



def do_attendence_test():
    # --------------------------------------------------------------- #
    # - Case 1: add student in lecture                              - #
    # --------------------------------------------------------------- #
    client_add_student('leeseongwon', 'computernetwork', '2021103751', 'jeongeunseong')
    client_add_student('leeseongwon', 'computernetwork', '2020103832', 'kimyonghun')
    client_add_student('leeseongwon', 'computernetwork', '2022103812', 'kimkangsan')
    client_add_student('leeseongwon', 'computernetwork', '2019103132', 'yoonjungmin')

    client_add_student('leeseongwon', 'database', '2021103751', 'jeongeunseong')
    client_add_student('leeseongwon', 'database', '2020103832', 'kimyonghun')
    
    # --------------------------------------------------------------- #
    # - Case 2: add attendance                                      - #
    # --------------------------------------------------------------- #
    client_add_attendance('leeseongwon', 'computernetwork', '2021103751', 'jeongeunseong')
    client_add_attendance('leeseongwon', 'computernetwork', '2020103832', 'kimyonghun')
    client_add_attendance('leeseongwon', 'computernetwork', '2022103812', 'kimkangsan')
    client_add_attendance('leeseongwon', 'computernetwork', '2019103132', 'yoonjungmin')
    
    client_add_attendance('leeseongwon', 'database', '2021103751', 'jeongeunseong')
    client_add_attendance('leeseongwon', 'database', '2020103832', 'kimyonghun')


if __name__ == "__main__":
    do_attendence_test()