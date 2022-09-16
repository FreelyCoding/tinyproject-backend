from django.shortcuts import render
from django.db import connection
from django.http import HttpResponse
import json


def quote(s):
    return "'" + str(s) + "'"


def return_info(string, error=""):
    t = {}
    if string != "":
        t["string"] = string
    if error != "":
        t["error"] = error
    return json.dumps(t, ensure_ascii=False)


def get_student(student_id):
    cursor = connection.cursor()
    sql = "SELECT * FROM student WHERE student_id = " + "'" + str(student_id) + "';"
    cursor.execute(sql)
    student = cursor.fetchone()
    return student


def get_course(course_id):
    cursor = connection.cursor()
    sql = "SELECT * FROM course WHERE course_id = " + "'" + str(course_id) + "';"
    cursor.execute(sql)
    course = cursor.fetchone()
    return course


def to_course(t: tuple):
    arr = ["id", "course_id", "name", "teacher", "classroom", "max_capacity", "cur_capacity"]

    ans = {}
    for i in range(1, len(arr)):
        ans[arr[i]] = t[i]
    return ans


def student_add(request):
    # POST
    if request.method != 'POST':
        return HttpResponse(status=403, content=json.dumps({"string": "选课失败", "err": "未知错误"},
                                                           ensure_ascii=False))

    try:
        print(json.loads(request.body))
        info = json.loads(request.body)
        student_id = info['student_id']
        course_id = info['course_id']

        if student_id is None or course_id is None:
            return HttpResponse(status_code=403, content=json.dumps({"string": "选课失败", "err": "未知错误"},
                                                                    ensure_ascii=False))

        student = get_student(student_id)
        print(student)
        course = get_course(course_id)
        print(course)

        if student is None:
            return HttpResponse(status=402, content=json.dumps({"string": "选课失败", "err": "学生不存在"},
                                                               ensure_ascii=False))
        elif course is None:
            return HttpResponse(status=402, content=json.dumps({"string": "选课失败", "err": "课程不存在"},
                                                               ensure_ascii=False))

        max_capacity = course[5]
        cur_capacity = course[6]

        if cur_capacity >= max_capacity:
            return HttpResponse(status=401, content=json.dumps({"string": "选课失败", "err": "容量已满"},
                                                               ensure_ascii=False))

        cursor = connection.cursor()
        sql = "SELECT * FROM selection WHERE student_id = %s AND course_id = %s" \
              % (quote(student_id), quote(course_id))
        cursor.execute(sql)

        if cursor.fetchone() is not None:
            return HttpResponse(status=200, content=json.dumps({"string": "选课成功"}, ensure_ascii=False))

        sql = "INSERT INTO selection (student_id, course_id) " \
              "VALUES (%s, %s);" % (quote(student_id), quote(course_id))
        cursor.execute(sql)

        sql = "UPDATE course SET cur_capacity = %s" \
              "WHERE course_id = %s;" % (quote(cur_capacity + 1), quote(course_id))
        cursor.execute(sql)

        return HttpResponse(status=200, content=json.dumps({"string": "选课成功"}, ensure_ascii=False))

    except:
        return HttpResponse(status=403, content=json.dumps({"string": "选课失败", "err": "未知错误"},
                                                           ensure_ascii=False))


def student_query(request):
    # GET
    if request.method != 'GET':
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

    try:
        print(request.GET)
        student_id = str(request.GET["student_id"])
        if student_id is None:
            return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

        cursor = connection.cursor()
        sql = "SELECT c.* FROM course AS c JOIN selection AS s " \
              "ON s.student_id = %s AND c.course_id = s.course_id;" % quote(student_id)
        cursor.execute(sql)

        courses = cursor.fetchall()
        print(courses)
        l = []
        for i in courses:
            l.append(to_course(i))

        return HttpResponse(status=200, content=json.dumps(l, ensure_ascii=False))

    except:
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))


def student_delete(request):
    #POST
    if request.method != 'POST':
        return HttpResponse(status=403, content=return_info("未知错误"))

    try:
        info = json.loads(request.body)
        student_id = str(info['student_id'])
        course_id = str(info['course_id'])

        student = get_student(student_id)
        course = get_course(course_id)

        if student is None:
            return HttpResponse(status=402, content=return_info("退选失败", "学生不存在"))
        elif course is None:
            return HttpResponse(status=402, content=return_info("退选失败", "课程不存在"))

        cursor = connection.cursor()
        sql = "SELECT * FROM selection WHERE student_id = %s AND course_id = %s;" \
              % (quote(student_id), quote(course_id))
        cursor.execute(sql)

        if cursor.fetchone() is None:
            return HttpResponse(status=401, content=return_info("退选失败", "尚未选课"))

        sql = "DELETE FROM selection WHERE student_id = %s AND course_id = %s;" \
              % (quote(student_id), quote(course_id))
        cursor.execute(sql)

        cur_capacity = course[6]

        sql = "UPDATE course SET cur_capacity = %s WHERE course_id = %s;" \
              % (quote(cur_capacity - 1), quote(course_id))
        cursor.execute(sql)

        return HttpResponse(status=200, content=return_info("退选成功"))

    except:
        return HttpResponse(status=403, content=return_info("未知错误"))


def student_profile(request):
    # GET
    if request.method != 'GET':
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

    try:
        student_id = str(request.GET["student_id"])
        if student_id is None:
            return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

        student = get_student(student_id)
        if student is None:
            return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

        t = {}
        arr = ["id", "student_id", "name", "college_grade", "major", "class", "email"]
        for i in range(1, len(student)):
            t[arr[i]] = student[i]

        return HttpResponse(status=200, content=json.dumps(t, ensure_ascii=False))

    except:
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))


def student_update(request):
    #POST
    if request.method != 'POST':
        return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))

    try:
        arr = ["student_id", "name", "college_grade", "major", "class", "email"]
        info = json.loads(request.body)
        student_id = info['student_id']
        if student_id is None:
            return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))

        student = get_student(student_id)
        if student is None:
            return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))

        cursor = connection.cursor()
        sql = "UPDATE student SET "
        for key in arr:
            print(key)
            if key not in info:
                continue
            sql += key + "=" + quote(info[key]) + ","

        sql = sql.strip(",")

        sql += "WHERE student_id = %s;" % quote(student_id)
        print(sql)

        cursor.execute(sql)

        return HttpResponse(status=200, content=return_info("修改成功"))

    except:
        return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))


def course_profile(request):
    #POST
    if request.method != 'POST':
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

    try:
        info = json.loads(request.body)

        course_id = info['course_id']

        if course_id is None:
            return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

        course = get_course(course_id)
        if course is None:
            return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

        t = {}
        arr = ["id", "course_id", "name", "teacher", "classroom", "max_capacity", "cur_capacity"]
        for i in range(1, len(course)):
            t[arr[i]] = course[i]

        return HttpResponse(status=200, content=json.dumps(t, ensure_ascii=False))

    except:
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))


def course_update(request):
    #POST
    if request.method != 'POST':
        return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))

    try:
        arr = ["course_id", "name", "teacher", "classroom", "max_capacity", "cur_capacity"]

        info = json.loads(request.body)
        course_id = info['course_id']

        # 不可修改容量
        # if "max_capacity" in info or "cur_capacity" in info:
        #     return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))

        if course_id is None:
            return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))

        course = get_course(course_id)
        if course is None:
            return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))

        cursor = connection.cursor()
        sql = "UPDATE course SET "
        for key in arr:
            print(key)
            if key not in info:
                continue
            sql += key + "=" + quote(info[key]) + ","

        sql = sql.strip(",")

        sql += "WHERE course_id = %s;" % quote(course_id)
        print(sql)

        cursor.execute(sql)

        return HttpResponse(status=200, content=return_info("修改成功"))

    except:
        return HttpResponse(status=401, content=return_info("修改失败", "未知错误"))


def student_all(request):
    #GET
    if request.method != 'GET':
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

    try:
        cursor = connection.cursor()
        sql = "SELECT * FROM student;"
        cursor.execute(sql)

        students = cursor.fetchall()

        arr = ["id", "student_id", "name", "college_grade", "major", "class", "email"]

        student_list = []
        for student in students:
            d = {}
            for i in range(1, len(arr)):
                d[arr[i]] = student[i]

            student_list.append(d)

        return HttpResponse(status=200, content=json.dumps(student_list, ensure_ascii=False))

    except:
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))


def course_all(request):
    #GET
    if request.method != 'GET':
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))

    try:
        cursor = connection.cursor()
        sql = "SELECT * FROM course;"
        cursor.execute(sql)

        courses = cursor.fetchall()

        arr = ["id", "course_id", "name", "teacher", "classroom", "max_capacity", "cur_capacity"]

        course_list = []
        for course in courses:
            d = {}
            for i in range(1, len(arr)):
                d[arr[i]] = course[i]

            course_list.append(d)

        return HttpResponse(status=200, content=json.dumps(course_list, ensure_ascii=False))

    except:
        return HttpResponse(status=401, content=return_info("查询失败", "未知错误"))
