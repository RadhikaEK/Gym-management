from django.conf.urls import url
from temp import views
urlpatterns=[
    url('^ad/',views.login),
    url('^gym/',views.gym),
    url('adm',views.admin),
    url('user/',views.user)

]