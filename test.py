import pytest
import requests


def test_welcome():
    response = requests.get("http://127.0.0.1:5000")
    assert response.status_code == 200
    assert "Cambio nuevo de Crescencio otro mas de prueba" in response.text
