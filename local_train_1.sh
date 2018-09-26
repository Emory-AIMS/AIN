#!/bin/bash
python3 ./code/run_aan.py --train --local --NUM_EPOCHS 1 --BATCH_SIZE 64 --EVAL_FREQUENCY 1\
    --AE_TYPE TRAD\
    --EARLY_STOPPING_THRESHOLD 10\
    --BETA_X 0.1\
    --BETA_Y_LEAST 0\
    --BETA_Y_FAKE 60\
    --BETA_Y_CLEAN 1\
    --PIXEL_BOUND 64\
    --EPSILON 1\
    --FGM_ITERS 2