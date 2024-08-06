from django.conf.urls import url
from shedule_trainer import views
urlpatterns=[
    url('shedule/',views.shedule),
    url('shedule_v/',views.view_shedle),
    ]