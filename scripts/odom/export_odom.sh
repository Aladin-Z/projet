
GPU=0



# working_dir=./experiments/odom/
# config_file=./pretrained_models/odom/config.yaml
working_dir=./experiments/odom/

CUDA_VISIBLE_DEVICES=$GPU python3 -u panoptic_forecasting/experiments/export_cityscapes_odom.py \
      --load_best_model \
      --working_dir $working_dir \
      --load_model pretrained_models/odom/odom_model_pt \
      --config_file ./pretrained_models/odom/config.yaml \
      --no_gpu 

# python3 -u panoptic_forecasting/experiments/export_cityscapes_odom.py --load_model ./pretrained_models/odom/odom_model_pt --working_dir ./experiments/odom/ --config_file ./pretrained_models/odom/config.yaml
