from django.shortcuts import render
from chat.models import Chat

# Create your views here.
def msg(request):
    if request.method=='POST':
        obj=Chat()
        obj.chat=request.POST.get('c1')
        obj.save()
    return render(request,'chat/add_chat.html')


def viewmsg(request):
    obj=Chat.objects.all()
    context={
        'x':obj
    }
    return render(request,'chat/view_chat.html',context)
