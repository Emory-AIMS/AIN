#!/bin/bash
python3 ./code/run_attain_v5.py --train --NUM_EPOCHS 200 --BATCH_SIZE 80 --EVAL_FREQUENCY 50\
    --DATA_DIR ../tiny-imagenet-200 \
    --AE_TYPE ATTAE\
    --ATT_TYPE TRAD\
    --train_label=True \
    --ADD_RANDOM=True \
    --USE_LABEL_MASK=True \
    --NUM_PRE_EPOCHS 5 --PRE_EVAL_FREQUENCY 1\
    --NUM_ACCUM_ITERS 1\
    --GAMMA_R 1e-3 --GAMMA_L 1.0\
    --REG_SCALE 2e-3\
    --OPT_TYPE ADAM --LEARNING_RATE 2e-4 --LEARNING_DECAY_RATE 0.99 --LEARNING_DECAY_STEPS 2000\
    --IS_GRAD_CLIPPING --GRAD_CLIPPING_NORM 1.0\
    --LOSS_MODE_TRANS C_W2 --LOSS_MODE_CLEAN C_W2\
    --BETA_X_TRUE 1e-2 --BETA_X_TRUE_CHANGE_RATE 1.02\
    --BETA_X_FAKE 1.0 --BETA_X_FAKE_CHANGE_RATE 1.02\
    --LOSS_Y_LOW_BOUND_T -500.0 --LOSS_Y_UP_BOUND_T 500.0\
    --LOSS_Y_LOW_BOUND_F -500.0\
    --LOSS_Y_LOW_BOUND_C -500.0 --LOSS_Y_UP_BOUND_C 500.0\
    --BETA_Y_TRANS 20.0 --BETA_Y_TRANS_CHANGE_RATE 1.02\
    --BETA_Y_FAKE 1e-1 --BETA_Y_FAKE_CHANGE_RATE 1.02\
    --BETA_Y_CLEAN 20.0 --BETA_Y_CLEAN_CHANGE_RATE 1.02\
    --BOUND_CHANGE_TYPE EXP --PIXEL_BOUND 0.15 --BOUND_CHANGE_RATE -0.02 --BOUND_CHANGE_EPOCHS 4\
    --MIN_BOUND 0.001 --MAX_BOUND 0.2\
    --ABS_DIFF_THRESHOLD 5e-4\
    --ADAPTIVE_UP_THRESHOLD 0.1 --ADAPTIVE_LOW_THRESHOLD 0.01\
    --ADAPTIVE_BOUND_INC_RATE 0.98 --ADAPTIVE_BOUND_DEC_RATE 1.01\
    --ENC_NORM LAYER --DEC_NORM LAYER\
    --CENTRAL_CHANNEL_SIZE 3\
    --NUM_ENC_RES_BLOCK 3 --ENC_RES_BLOCK_SIZE 1\
    --NUM_DEC_RES_BLOCK 3 --DEC_RES_BLOCK_SIZE 1\
    --EPSILON 5e-4\
    --FGM_ITERS 20