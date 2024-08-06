from django.shortcuts import render
from user.models import User


from .serializer import Aluminiserializer
from django.http import HttpResponse,JsonResponse
from django.db import connection
from rest_framework.views import APIView
from rest_framework.response import Response
from login.models import Login

# Create your views here.
def user(request):
    obj=User.objects.all()
    context={
        'objval':obj,
    }
    return render(request,"user/verify user.html",context)


class Androidview(APIView):
    def get(self,request):
        s = User.objects.all()
        ser = Aluminiserializer(s,many=True)
        return Response(ser.data)
    def post(self,request):
        obj = User()
        obj.username = request.data['nm']
        obj.age = request.data['ag']
        obj.gender =request.data['ge']
        obj.weight =request.data['we']
        obj.height =request.data['he']
        obj.body_type =request.data['bo']
        obj.fat =request.data['fa']
        obj.save()


        ob = Login()
        ob.username =request.data['nm']
        ob.password =request.data['pa']
        ob.uid = obj.u_id
        ob.type = 'user'
        ob.save()

        return HttpResponse("Ok")

def user_reg(request):
    if request.method=='POST':
        obj=User()
        obj.username=request.POST.get('username')
        obj.password=request.POST.get('ps1')
        obj.age=request.POST.get('age')
        obj.gender=request.POST.get('g1')
        obj.weight = request.POST.get('a1')
        obj.height=request.POST.get('h1')
        obj.body_type=request.POST.get('b1')
        obj.fat=request.POST.get('f1')
        obj.save()

        ob = Login()
        ob.username = obj.username
        ob.password = obj.password
        ob.type = 'user'
        ob.uid = obj.u_id
        ob.save()
    return render(request,'user/registration.html')

def user_details(request):
    obj=User.objects.all()
    context={
        'x':obj
    }
    return render(request,'user/view_details.html',context)