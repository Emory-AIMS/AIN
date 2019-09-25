#!/bin/bash
python3 ./code/run_ain_v1.py --train --NUM_EPOCHS 200 --BATCH_SIZE 8 --EVAL_FREQUENCY 1\
    --DATA_DIR ../tiny-imagenet-200\
    --AE_TYPE EMBAE\
    --NUM_PRE_EPOCHS 3 --PRE_EVAL_FREQUENCY 200\
    --NUM_ACCUM_ITERS 256\
    --GAMMA_R 1e-3 --GAMMA_L 1.0\
    --BOTTLENECK 256\
    --REG_SCALE 1e-6\
    --IS_GRAD_CLIPPING --GRAD_CLIPPING_NORM 10.0\
    --BETA_X_TRUE 1e-2 --BETA_X_TRUE_CHANGE_RATE 1.1 --BETA_X_TRUE_CHANGE_EPOCHS 10 --MAX_BETA_X_TRUE 0.1\
    --BETA_X_FAKE 100.0 --BETA_X_FAKE_CHANGE_RATE 1.1 --BETA_X_FAKE_CHANGE_EPOCHS 10 --MAX_BETA_X_FAKE 500\
    --MODIFY_KAPPA_THRESHOLD 8\
    --KAPPA_FOR_TRANS 100 --KAPPA_TRANS_CHANGE_RATE 1.2\
    --KAPPA_FOR_CLEAN 100 --KAPPA_CLEAN_CHANGE_RATE 1.2\
    --BETA_Y_TRANS 1 --BETA_Y_TRANS_CHANGE_RATE 1.2 --BETA_Y_TRANS_CHANGE_EPOCHS 10 --MAX_BETA_Y_TRANS 10\
    --BETA_Y_FAKE 0.1 --BETA_Y_FAKE_CHANGE_RATE 1.2 --BETA_Y_FAKE_CHANGE_EPOCHS 10 --MAX_BETA_Y_FAKE 1\
    --BETA_Y_CLEAN 200 --BETA_Y_CLEAN_CHANGE_RATE 1.2 --BETA_Y_CLEAN_CHANGE_EPOCHS 10 --MAX_BETA_Y_CLEAN 500\
    --PIXEL_BOUND 0.05 --BOUND_CHANGE_RATE 0.8 --BOUND_CHANGE_EPOCHS 8 --MIN_BOUND 0.005\
    --EMB_NORM LAYER\
    --CENTRAL_CHANNEL_SIZE 3\
    --NUM_ENC_RES_BLOCK 3 --ENC_RES_BLOCK_SIZE 1\
    --NUM_DEC_RES_BLOCK 3 --DEC_RES_BLOCK_SIZE 1\
    --EMB_TYPE MINIMUM --EMB_NORM LAYER\
    --EMB_SIZE 1024\
    --EPSILON 5e-4\
    --FGM_ITERS 50