from django.shortcuts import render
from wrkout_details.models import WrkoutDetails
from django.core.files.storage import FileSystemStorage


from .serializer import Aluminiserializer
from django.http import HttpResponse,JsonResponse
from django.db import connection
from rest_framework.views import APIView
from rest_framework.response import Response

from gym import settings
from pandas import read_excel
from sklearn import svm

import numpy as np



# Create your views here.
def workout(request):
    if request.method=="POST":

        w = request.POST.get('d')
        print(w)
        s = w.strip()
        print(s)
        obj=WrkoutDetails()
        obj.workout_name=request.POST.get('w')
        obj.gym_id = str(request.session['uid'])
        obj.details = s

        myfile = request.FILES['file']

        fs = FileSystemStorage()
        filename = fs.save(myfile.name, myfile)
        image = myfile.name

        obj.video = image
        obj.save()
    return render(request,"wrkout_details/wrkout.html")

def view_wrkdetails(request):
    obj=WrkoutDetails.objects.all()
    context={
        'x':obj
    }
    return render(request,'wrkout_details/view_video.html',context)


class Androidview(APIView):
    def get(self,request):
        s = WrkoutDetails.objects.all()
        ser = Aluminiserializer(s,many=True)
        return Response(ser.data)

    def post(self,request):
        a = request.data["age"]
        b = request.data["time"]
        c = request.data["body"]
        d = request.data["gen"]

        dspath = settings.BASE_DIR + settings.STATIC_URL + "data.xlsx"
        data = read_excel(dspath, "Sheet1")
        X = data.iloc[:, 0:4].values
        y = data.iloc[:, 4].values

        clf = svm.SVC()
        clf.fit(X, y)
        inp = a + "#" + b + "#" + c + "#" + d
        inpa = inp.split('#')
        print(inpa)

        o = clf.predict([inpa])

        print(o)

        result = ""

        if o == [1]:
            result = "Dumbbell rows"
        elif o == [2]:
            result = "Pushups"
        elif o == [3]:
            result = "Side planks"
        elif o == [4]:
            result = "Single-leg deadlifts"
        elif o == [5]:
            result = "Interval training"
        elif o == [6]:
            result = "Walking"

        return HttpResponse(result)

