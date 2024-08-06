from django.conf.urls import url
from payment import views
urlpatterns=[
    url('^add_pay/',views.add_payment),
    # url(r'^android/', views.Androidview.as_view()),
    url('view_payment1/',views.view_payment_1),
    url('user_payment2/',views.view_payment_2),
]