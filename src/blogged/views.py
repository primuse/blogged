from django.http import HttpResponse
from django.shortcuts import render

def home_page(request):
  return render(request, 'index.html')

def about_page(request):
  return render(request, 'index.html')

def contact_page(request):
  return render(request, 'index.html')
