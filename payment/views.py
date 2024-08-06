from django.shortcuts import render
from payment.models import Payment
from .serializer import Aluminiserializer
from django.http import HttpResponse,JsonResponse
from django.db import connection
from rest_framework.views import APIView
from rest_framework.response import Response
from trainer_details.models import GymDetails
from trainer_package.models import GymPackage
from user.models import User


# Create your views here.
# def paymnt(request):
#     uid = request.session['uid']
#     print(uid)
#     obj=Payment.objects.filter(gym_id=uid)
#     context={
#         'objval':obj,
#     }
#     return render(request,"payment/view paymnt.html",context)
#

import datetime

class Androidview(APIView):
    def get(self,request):
        s = Payment.objects.all()
        ser = Aluminiserializer(s,many=True)
        return Response(ser.data)
    def post(self,request):
        obj = Payment()
        obj.u_id = request.data['u']
        obj.gym_id = request.data['g']
        obj.gpack_id = request.data['p']
        obj.amount = request.data['a']
        obj.date = datetime.date.today()
        obj.time = datetime.datetime.now()
        obj.save()
        return HttpResponse('ok')



def add_payment(request):
    ob=GymDetails.objects.all()
    obb=GymPackage.objects.all()
    obje=User.objects.all()
    context={
        'x':ob,
        'y':obb,
        'z':obje
    }
    if request.method=='POST':
        obj=Payment()
        obj.amount=request.POST.get('a1')
        obj.date=datetime.datetime.now()
        obj.time=datetime.datetime.now()
        obj.u_id=request.POST.get('user_id')
        obj.g_id=request.POST.get('trainer_id')
        obj.gp_id=request.POST.get('package')
        obj.save()
    return render(request,'payment/add_payment.html',context)

def view_payment_1(request):
    obj=Payment.objects.all()
    context={
        'x':obj
    }
    return render(request,'payment/view_payment_to_admin.html',context)

def view_payment_2(request):
    obj=Payment.objects.all()
    context={
        'x':obj
    }
    return render(request,'payment/view_payment_to_user.html',context)