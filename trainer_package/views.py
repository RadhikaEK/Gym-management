from django.shortcuts import render
from trainer_package.models import GymPackage


from .serializer import Aluminiserializer
from django.http import HttpResponse, JsonResponse, HttpResponseRedirect
from django.db import connection
from rest_framework.views import APIView
from rest_framework.response import Response


# Create your views here.
def gympack(request):
    if request.method=="POST":
        obj=GymPackage()
        obj.gym_id = str(request.session['uid'])
        obj.package=request.POST.get('pa')
        obj.duration=request.POST.get('dur')
        obj.fee=request.POST.get('fee')
        obj.description=request.POST.get('des')
        obj.save()
    return render(request, "gym_package/gym_packg.html")



class Androidview(APIView):
    def get(self,request):
        cursor = connection.cursor()
        cursor.execute(
            "SELECT trainer_package.*,trainer_details.* from trainer_package INNER JOIN trainer_details on trainer_details.g_id=trainer_package.gp_id")
        allv = cursor.fetchall()
        json_data = []
        for obj in allv:
            json_data.append(
                {"gid": obj[1], "pid": obj[0], "gnm": obj[7], "loc": obj[8], "pa": obj[2], "du": obj[3],
                 "fee": obj[4], "des": obj[5]})
        return JsonResponse(json_data, safe=False)

def view_package(request):
    obj=GymPackage.objects.all()
    context={
        'x':obj
    }
    return render(request,'gym_package/view_package.html',context)
def view_user__package(request):
    obj=GymPackage.objects.all()
    context={
        'x':obj
    }
    return render(request,'gym_package/vie_user_packages.html',context)


# def update_package(request,idd):
#     obj=GymPackage.objects.get(gp_id=idd)
#     context={
#         'x':obj
#     }
#     if request.method=='POST':
#         obj=GymPackage.objects.get(gp_id=idd)
#         obj.package=request.POST.get('pa')
#         obj.duration=request.POST.get('dur')
#         obj.fee=request.POST.get('fee')
#         obj.description=request.POST.get('des')
#         obj.gym_id='1'
#         obj.save()
#         # return HttpResponseRedirect('trainer_package/view_package')
#     return render(request,'trainer_package/update_package.html',context)

def delete_pack(request,idd):
    obj=GymPackage.objects.get(gp_id=idd).delete()
    return view_package(request)
