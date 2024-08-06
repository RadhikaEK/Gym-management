from django.conf.urls import url
from feedback import views
urlpatterns=[
    url('^viewfeed/',views.feed),
    url(r'^android/', views.Androidview.as_view()),
    url('post/',views.post),
    url(r'^reply/(?P<idd>\w+)', views.post_replay, name="reply"),

]