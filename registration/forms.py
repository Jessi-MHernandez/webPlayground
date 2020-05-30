from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

#VAMOS A EXTENDER EL FORMULARIO
class UserCreationFormWithEmail(UserCreationForm):
    email = forms.EmailField(required=True, help_text="Requerido, 130 caracteres como máximo y debe ser válido")

    class Meta:
        model = User
        fields = ("username", "email", "password1", "password2")