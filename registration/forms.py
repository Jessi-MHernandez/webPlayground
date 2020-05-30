from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

#VAMOS A EXTENDER EL FORMULARIO
class UserCreationFormWithEmail(UserCreationForm):
    email = forms.EmailField(required=True, help_text="Requerido, 130 caracteres como máximo y debe ser válido")

    class Meta:
        model = User
        fields = ("username", "email", "password1", "password2")

#VALIDANDO UN EMAIL UNICO
    def clean_email(self):
        email = self.cleaned_data.get("email")
        #COMPROBAR EN BD
        if User.objects.filter(email=email).exists():
            raise forms.ValidationError("El email ya esta registrado, intenta con otro.")
        return email