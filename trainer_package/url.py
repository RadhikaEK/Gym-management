from django.conf.urls import url
from trainer_package import views
urlpatterns=[
    url('^package/',views.gympack),
    url(r'^android/', views.Androidview.as_view()),
    url('view_pack/',views.view_package),
    url('view_u_pack/',views.view_user__package),
    url(r'^delete/(?P<idd>\w+)', views.delete_pack, name="tr_delete"),
]