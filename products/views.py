from django.shortcuts import render
from products.models import Products

# Create your views here.
def product_details(request):
    if request.method == 'POST':
        obj =Products()
        obj.product_name = request.POST.get('pn')
        obj.price = request.POST.get('pr')
        obj.save()
    return render(request,'products/product_details.html')

def view_product(request):
    obj=Products.objects.all()
    context={
        'x':obj
    }
    return render(request,'products/view_productdetails.html',context)