from django.conf.urls import url
from chat import views

urlpatterns=[
    url('mess/',views.msg),
    url('c_vw/',views.viewmsg),
]