GPU=0


working_dir='./experiments/pretrained_bg/'
model_path='./pretrained_models/bg/bg_model.pt'

#####################
# short term
######################
# config_file='./configs/bg/bg_val_short.yaml'
config_file='./pretrained_models/bg/config.yaml'
python3 -u panoptic_forecasting/experiments/export_cityscapes_segmentation_results.py \
      --load_best_model \
      --config_file $config_file \
      --no_gpu \
      --load_model ./pretrained_models/bg/bg_model.pt \
      --no_convert \
      --export_name exported_predictions_short_trainids \
      --working_dir ./experiments/pretrained_bg/ 



# working_dir='./experiments/pretrained_bg/'
# model_path='./pretrained_models/bg/bg_model.pt'


# # config_file='./configs/bg/bg_val_short.yaml'
# python3 -u panoptic_forecasting/experiments/export_cityscapes_segmentation_results.py \
#       --config_file ./pretrained_models/bg/config.yaml \
#       --load_model ./pretrained_models/bg/bg_model.pt \
#       --no_convert \
#       --export_name exported_predictions_short_trainids \
#       --working_dir ./experiments/pretrained_bg/ \
#       --no_gpu
#       # --load_best_model \./pretrained_models/bg/bg_model.pt