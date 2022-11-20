from django.shortcuts import render, redirect
from .forms import UserProfileInfoForm, UserForm

from django.contrib.auth import authenticate, login, logout
from django.conf import settings
from django.http import HttpRequest, HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.contrib.auth.decorators import login_required


@login_required(login_url=settings.LOGIN_URL)
def index(request):
    return render(request, 'basic_app/index.html')


@login_required(login_url=settings.LOGIN_URL)
def user_logout(request: HttpRequest):
    logout(request)
    return redirect(reverse('basic_app:login'))


def register(request):
    context = {}
    if request.method == "POST":
        user_form = UserForm(request.POST)
        profile_form = UserProfileInfoForm(request.POST)
        if user_form.is_valid() and profile_form.is_valid():
            user = user_form.save(commit=False)
            user.set_password(user.password)
            user.save()

            profile = profile_form.save(commit=False)
            profile.user = user

            if 'picture' in request.FILES:
                profile.picture = request.FILES['picture']

            profile.save()
            context["registered"] = True
        else:
            print(user_form.errors, profile_form.errors)
    else:
        user_form = UserForm()
        profile_form = UserProfileInfoForm()

    context["user_form"] = user_form
    context["profile_form"] = profile_form
    return render(request, 'basic_app/registration.html', context=context)


def user_login(request: HttpRequest):
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)

        if user:
            if user.is_active:
                login(request, user)
                return redirect(reverse('index'))
            else:
                return HttpResponse("ACCOUNT NOT ACTIVE")
        else:
            print("Some one tried to login and failed!")
            print(f"Username: {username}")
            print(f"Password: {password}")
            return HttpResponse("Invalid login details supplied!")

    else:
        return render(request, 'basic_app/login.html')
