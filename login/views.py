from django.shortcuts import render
from login.models import Login
# Create your views here.


from .serializer import Aluminiserializer
from django.http import HttpResponse,JsonResponse
from django.db import connection
from rest_framework.views import APIView
from rest_framework.response import Response



def login(request):
    uname = request.POST.get("u")
    passw = request.POST.get("p")

    obj = Login.objects.filter(username=uname, password=passw)
    tp = ""
    for ob in obj:
        tp = ob.type
        uid = ob.uid
        if tp == "admin":
            return render(request, 'temp/admin.html')
        elif tp == 'gym':
            request.session['uid'] = uid
            return render(request, 'temp/gym_home.html')
        elif tp == 'user':
            request.session['uid'] = uid
            return render(request, 'temp/user.html')
        objlist = "Username or Password incorrect... Please try again...!"
        context = {
            'msg': objlist,
        }
        return render(request, 'login/login.html', context)
    return render(request, 'login/login.html')



class Androidview(APIView):
    def post(self,request):
        # unm = request.data['unm']
        # pa = request.data['pas']
        unm = 'aaa'
        pa = 'b'
        print(request)
        # print(pa)
        s = Login.objects.filter(username=unm,password=pa)
        ser = Aluminiserializer(s,many=True)
        return Response(ser.data)


