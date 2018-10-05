#!/bin/bash
python3 ./code/run_aan.py --train --NUM_EPOCHS 500 --BATCH_SIZE 128 --EVAL_FREQUENCY 25\
    --AE_TYPE TRAD\
    --EARLY_STOPPING_THRESHOLD 50\
    --BETA_X_TRUE 0.25\
    --BETA_X_TRUE_CHANGE_RATE 1.2\
    --BETA_X_TRUE_CHANGE_EPOCHS 8\
    --BETA_X_FAKE 0.25\
    --BETA_Y_TRANS 100\
    --BETA_Y_FAKE 0\
    --BETA_Y_FAKE_CHANGE_RATE 1.2\
    --BETA_Y_FAKE_CHANGE_EPOCHS 10\
    --BETA_Y_CLEAN 100\
    --PIXEL_BOUND 8\
    --BOUND_CHANGE_RATE 0.8\
    --BOUND_CHANGE_EPOCHS 10\
    --EPSILON 0.5\
    --FGM_ITERS 2