"""Test Module."""

import math

from new_package.main import adder


def test_adds_two_integers():
    """Adds two integers."""
    assert adder(1, 2) == 3


def test_adds_two_floats():
    """Adds two floats."""
    assert math.isclose(adder(1.0, 2.0), 3.0)
