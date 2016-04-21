#!/bin/bash
# script/reminder on how to update the wcs
tools/generate_layers_12bands.rb /ogc/data/metrics/emodis/*tif > layers/wcs/modis_12_band_metrics.layer.map
tools/generate_layers_5bands.rb /ogc/data/metrics/emodis/*tif > layers/wcs/modis_5_band_metrics.layer.map
tools/generate_layers_5bands.rb /ogc/data/metrics/avhrr/*tif > layers/wcs/avhrr_5_band_metrics.layer.map
tools/generate_layers_12bands.rb /ogc/data/metrics/avhrr/*tif > layers/wcs/avhrr_12_band_metrics.layer.map

