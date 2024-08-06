from django.shortcuts import render
from user.models import User
from assign_trainer.models import AssTrainer
from trainer_details.models import GymDetails
# Create your views here.
def ass_tr(request):
    obj=User.objects.all()
    obb=GymDetails.objects.all()
    context={
        'x':obj,
        'y':obb

    }
    if request.method=='POST':
        ob=AssTrainer()
        ob.u_id=request.POST.get('user_id')
        ob.g_id=request.POST.get('trainer_id')
        ob.save()
    return render(request,'assign_trainer/assign_trainer.html',context)

def ass_view(request):
    obj=AssTrainer.objects.all()
    context={
        'x':obj
    }
    return render(request,'assign_trainer/view_assignedtrainer.html',context)

def ass_view2(request):
    obj=AssTrainer.objects.all()
    context={
        'x':obj
    }
    return render(request,'assign_trainer/view_assign.html',context)
