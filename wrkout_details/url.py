from django.conf.urls import url
from wrkout_details import views
urlpatterns=[
    url('^wrk/',views.workout),
    url(r'^android/', views.Androidview.as_view()),
    url('wrk_view/',views.view_wrkdetails)
]