from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.conf import settings
from django.views.decorators.csrf import csrf_exempt
from .models import *

# Create your views here.


def main(request):
    return render(request, 'button/main.html')


@csrf_exempt
def buttonSubmit(request):
    name = request.POST['username']
    button = Button.objects.first()

    out = name[:100]
    if button.state != "":
        out = button.state

    button.state = out
    button.save()
    return HttpResponse(out)

@csrf_exempt
def reset(request):
    button = Button.objects.first()
    button.state = ''
    button.save()
    return HttpResponse("")
