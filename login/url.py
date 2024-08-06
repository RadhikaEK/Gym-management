from django.conf.urls import url
from login import views
urlpatterns=[
    url('^$',views.login),
    url(r'^android/', views.Androidview.as_view()),
]