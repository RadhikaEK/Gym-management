from django.shortcuts import render
from trainer_details.models import GymDetails
from login.models import Login


# from .serializer import Aluminiserializer
from django.http import HttpResponse,JsonResponse
from django.db import connection
# from rest_framework.views import APIView
# from rest_framework.response import Response

# Create your views here.
def gym(request):
    if request.method=="POST":
        obj=GymDetails()
        obj.gym_name=request.POST.get('n')
        obj.password=request.POST.get('p')
        obj.location=request.POST.get('loc')
        obj.email=request.POST.get('em')
        obj.phn_number=request.POST.get('phn')
        obj.branch=request.POST.get('br')
        obj.save()

        ob = Login()
        ob.username = obj.gym_name
        ob.password = obj.password
        ob.type = 'gym'
        ob.uid = obj.g_id
        ob.save()
    return render(request, "gym_details/reg tr.html")


def gymdetail(request):
    obj=GymDetails.objects.all()
    context={
        'objval':obj,
    }
    return render(request,"gym_details/view_gym_details.html",context)


# class Androidview(APIView):
#     def get(self,request):
#         s = GymDetails.objects.all()
#         ser = Aluminiserializer(s,many=True)
#         return Response(ser.data)

def te_approve(request,idd):
    obj=GymDetails.objects.get(g_id=idd)
    obj.status='approve'
    obj.save()
    return gymdetail(request)
def te_reject(request,idd):
    obj=GymDetails.objects.get(g_id=idd)
    obj.status='reject'
    obj.save()
    return gymdetail(request)
def view_user(request):
    obj=GymDetails.objects.all()
    context={
        'x':obj,
    }
    return render(request,"gym_details/user_view.html",context)