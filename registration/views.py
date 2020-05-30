from .forms import UserCreationFormWithEmail
from django.views.generic import CreateView
from django.urls import reverse_lazy
from django import forms

# Create your views here.
class SignUpView(CreateView):
    form_class = UserCreationFormWithEmail
   # success_url = reverse_lazy('login')
    template_name = 'registration/signup.html'

    def get_success_url(self):
        return reverse_lazy('login') + '?register'   

    def get_form(self, form_class:None):
        form = super(SignUpView, self).get_form()
        #MODIFICAR EN TIEMPO REAL
        
    def get_form(self, form_class=None):
        form = super(SignUpView, self).get_form()
        # Modificar en tiempo real
        form.fields['username'].widget = forms.TextInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Nombre de usuario'})
        form.fields['email'].widget = forms.EmailInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Escribe tu dirección de correo electrónico'})
        form.fields['password1'].widget = forms.PasswordInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Contraseña'})
        form.fields['password2'].widget = forms.PasswordInput(
            attrs={'class':'form-control mb-2', 'placeholder':'Repite la contraseña'})
        return form

  
