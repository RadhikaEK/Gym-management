from django.conf.urls import url
from trainer_details import views
urlpatterns=[
    url('^reggym/',views.gym),
    url('^viewgym/',views.gymdetail),
    # url(r'^android/', views.Androidview.as_view()),
    url(r'^approve/(?P<idd>\w+)', views.te_approve, name="te_approve"),
    url(r'^reject/(?P<idd>\w+)', views.te_reject, name="te_reject"),
    url('user_view/',views.view_user),
]