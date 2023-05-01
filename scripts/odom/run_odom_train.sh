# 2>&1 |

GPU=0

config_file='./configs/odom/odom_train.yaml'
working_dir=./experiments/odom/
mkdir -p $working_dir
CUDA_VISIBLE_DEVICES=$GPU python3 -u panoptic_forecasting/experiments/train_model.py \
      --config_file $config_file \
      --working_dir $working_dir 2>&1 | tee "${working_dir}results.txt"


#CUDA_VISIBLE_DEVICES=$GPU python -u panoptic_forecasting/experiments/train_model.py \
#      --continue_training \
#      --working_dir $working_dir |& tee "${working_dir}results_p2.txt"


# CUDA_VISIBLE_DEVICES=0 python3 -u panoptic_forecasting/experiments/train_model.py --config_file './configs/odom/odom_train.yaml' --working_dir ./experiments/odom/ 2>&1 | tee "./experiments/odom/results.txt"
