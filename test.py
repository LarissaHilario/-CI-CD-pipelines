import requests
import pytest


def test_root_route():
    response = requests.get("http://127.0.0.1:5000")
    assert response.status_code == 200
