from django.conf.urls import url
from products import views
urlpatterns=[
    url('product/',views.product_details),
    url('product_view/',views.view_product),
    ]