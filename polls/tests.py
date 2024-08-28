from django.test import Client
from django.test import TestCase


class IndexViewTestCase(TestCase):
    def setUp(self):
        self.client = Client()

    def test_happy_path_should_return_200(self):
        response = self.client.get('/polls/')
        self.assertEqual(response.status_code, 200)
