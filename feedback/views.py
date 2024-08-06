from django.shortcuts import render
from feedback.models import Feedback


from .serializer import Aluminiserializer
from django.http import HttpResponse,JsonResponse
from django.db import connection
from rest_framework.views import APIView
from rest_framework.response import Response

# Create your views here.


def feed(request):
    obj=Feedback.objects.all()
    context={
        'objval':obj,
    }
    return render(request, "feedback/view_feed.html", context)

import datetime
class Androidview(APIView):
    def get(self,request):
        s = Feedback.objects.all()
        ser = Aluminiserializer(s,many=True)
        return Response(ser.data)

    def post(self, request):
        obj = Feedback()
        obj.feedback = request.data["f"]
        obj.date = datetime.date.today()
        obj.time = datetime.datetime.now()
        obj.save()
        return HttpResponse("success")

def post(request):
    if request.method=='POST':
        obj=Feedback()
        obj.feedback=request.POST.get('f1')
        obj.date=datetime.datetime.now()
        obj.time=datetime.datetime.now()
        obj.save()
    return render(request,'feedback/post_feedback.html')

def post_replay(request,idd):
    if request.method=="POST":
        obj=Feedback.objects.get(f_id=idd)
        obj.reply=request.POST.get('r1')
        obj.save()
    return render(request,'feedback/post_reply.html')