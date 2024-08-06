from django.shortcuts import render

# Create your views here.


def login(request):
    return render(request,'temp/ad_home.html')


def gym(request):
    return render(request,'temp/gym_home.html')

def admin(request):
    return render(request,'temp/admin.html')

def user(request):
    return render(request,'temp/user.html')

