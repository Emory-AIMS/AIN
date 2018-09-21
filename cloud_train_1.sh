#!/bin/bash
python3 ./code/run_aan.py --train --NUM_EPOCHS 200 --BATCH_SIZE 128 --EVAL_FREQUENCY 25\
    --BETA_X 0.2\
    --BETA_X_CHANGE_RATE 1.2\
    --BETA_X_CHANGE_EPOCHS 2\
    --BETA_Y_LEAST 0\
    --BETA_Y_FAKE 50\
    --BETA_Y_CLEAN 1\
    --PIXEL_BOUND 32\
    --BOUND_CHANGE_RATE 0.8\
    --BOUND_CHANGE_EPOCHS 8\
    --EPSILON 64\
    --EPSILON_CHANGE_RATE 0.8\
    --EPSILON_CHANGE_EPOCHS 8\
    --FGM_ITERS 2
    