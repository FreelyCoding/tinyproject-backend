"""tinyproject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from course_selection import views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("student/add", views.student_add),
    path("student/query", views.student_query),
    path("student/del", views.student_delete),
    path("student/profile", views.student_profile),
    path("student/update", views.student_update),
    path("student/selectable", views.student_selectable),
    path("course/profile", views.course_profile),
    path("course/update", views.course_update),
    path("student/all", views.student_all),
    path("course/all", views.course_all)
]
