GPU=0

working_dir='./experiments/pretrained_fg/'
model_path='./pretrained_models/fg/fg_model.pt'

#############################################
# Short Term
#############################################
config_file='./configs/fg/fg_val_short.yaml'
export_name='exported_panoptics_shortterm'
bg_dir='./experiments/pretrained_bg/exported_predictions_short_trainids/'


python3 -u panoptic_forecasting/experiments/export_cityscapes_panoptic_results.py \
          --config_file ./configs/fg/fg_val_short.yaml \
          --load_model  ./pretrained_models/fg/fg_model.pt \
          --export_name exported_panoptics_shortterm \
          --working_dir ./experiments/pretrained_fg/ \
          --extra_args data.background_dir ./experiments/pretrained_bg/exported_predictions_short_trainids/

python3 -m cityscapesscripts.evaluation.evalPanopticSemanticLabeling \
     --gt-json-file           data/cityscapes/gtFine/cityscapes_panoptic_val.json \
     --gt-folder              data/cityscapes/gtFine/cityscapes_panoptic_val/ \
     --prediction-json-file   ./experiments/pretrained_fg/exported_panoptics_shortterm_val/exported_panoptics_shortterm_val.json \
     --prediction-folder      ./experiments/pretrained_fg/exported_panoptics_shortterm_val/exported_panoptics_shortterm_val/ \
     --results_file           ./experiments/pretrained_fg/resultPanopticSemanticLabeling_shortterm.json

# Run this if you would like to visualize results
#python -u panoptic_forecasting/experiments/viz_cityscapes_panoptic.py \
#      ${working_dir}${export_name}_val/${export_name}_val.json \
#      ${working_dir}${export_name}_val/${export_name}_val \
#      data/cityscapes/leftImg8bit/val/ \
#      ${working_dir}${export_name}_viz/ \
#      --mask_dir data/cityscapes/gtFine/val/
