import numpy as np


def lambda_handler(event, context):
    return np.random.rand()
