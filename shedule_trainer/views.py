from django.shortcuts import render
from shedule_trainer.models import SheduleTrainer
from trainer_details.models import GymDetails

# Create your views here.
def shedule(request):
    ob=GymDetails.objects.all()
    context={
        'x':ob
    }
    if request.method=='POST':
        obj=SheduleTrainer()
        obj.date=request.POST.get('d1')
        obj.time=request.POST.get('t1')
        obj.g_id=request.POST.get('trainer_id')
        obj.save()
    return render(request,'shedule_trainer/shedule_trainer.html',context)

def view_shedle(request):
    obj=SheduleTrainer.objects.all()
    context={
        'x':obj
    }
    return render(request,'shedule_trainer/view_shedule.html',context)