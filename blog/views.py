from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.conf import settings
from django.urls import reverse
from .models import *


def index(request):
    posts = Post.objects.all()
    context = {'displayPosts': posts}
    return render(request, 'blog/index.html', context)


def newPost(request):
    password = request.GET['password']
    if password == 'passpass':
        return render(request, 'blog/newpost.html')
    else:
        return HttpResponseRedirect(reverse('blog:index'))


def submitPost(request):
    title = request.POST['title']
    titleWords = title.split(' ')
    for word in titleWords:
        if word.lower() in ['a', 'the', 'and', 'an', 'of']:
            titleWords.remove(word)

    shortTitle = ''
    while len(titleWords) > 0:
        if len(shortTitle) + len(titleWords[0]) < 40:
            shortTitle += titleWords.pop(0)
        else:
            break

    rawText = request.POST['body']
    abstract = rawText[:rawText.index('--abstract--')]
    body = rawText[rawText.index('--abstract--'):].replace('--abstract--','')

    newPost = Post.objects.create(title=title,
                                  shortTitle=shortTitle,
                                  abstract=abstract,
                                  body=body)
    return HttpResponseRedirect(reverse('blog:index'))
