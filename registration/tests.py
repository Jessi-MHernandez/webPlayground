from django.test import TestCase
from .models import Profile
from django.contrib.auth.models import User

# Create your tests here.
#VAMOS A CREAR UNA PRUEBA
class ProfileTestCase(TestCase):
    def setUp(self):
        User.objects.create_user('test', 'test@test.es', 'test1234')

    def test_profile_exists(self):
        exists = Profile.objects.filter(user__username='test').exists()
        self.assertEqual(exists, True)