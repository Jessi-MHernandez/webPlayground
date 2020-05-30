#from django.shortcuts import render
from django.views.generic.base import TemplateView

#ASI ES COMO DEFINIMOS UNA VISA BASADA EN CLASES 
class HomePageView(TemplateView):
    template_name = "core/home.html"
    

class SamplePageView(TemplateView):
    template_name = "core/sample.html"