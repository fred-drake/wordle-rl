"""Main Module."""

import os
from typing import Union

from loguru import logger


def adder(
    i1: Union[int, float],
    i2: Union[int, float],
) -> Union[int, float]:
    """This function adds two numbers."""
    return (i1 + i2)


def main() -> None:
    """Main function."""
    logger.info('We are here: {0}'.format(os.path.abspath(__file__)))

    pa = 1
    pb = 2
    logger.info('Adding integers {0} and {1}. Result: {2}'.format(
        pa, pb, adder(pa, pb),
    ))

    ta = 1.0
    tb = 2.0
    logger.info('Adding floats {0} and {1}. Result: {2}'.format(
        ta, tb, adder(ta, tb),
    ))


if __name__ == '__main__':
    main()
