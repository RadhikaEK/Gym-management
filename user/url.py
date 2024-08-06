from django.conf.urls import url
from user import views
urlpatterns=[
    url('^viewuser/',views.user),
    url(r'^android/', views.Androidview.as_view()),
    url('register/',views.user_reg),
    url('view_details/',views.user_details)
]