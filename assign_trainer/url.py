from django.conf.urls import url
from assign_trainer import views
urlpatterns=[
    url('assign_tri/',views.ass_tr),
    url('assign_view/',views.ass_view),
    url('assign_view2/',views.ass_view2)
    ]