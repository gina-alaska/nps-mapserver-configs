#!/usr/bin/env ruby
#
# simple/fast script to fetch metrics data
#ignores nodata, as the defintion isn't clear.

#Modis
2000.upto(2015) do |x| 
	next if File.exists?("#{x}_oneyear_layer_subset_good_metrics_ver16m1_3")
	system("wget http://static.gina.alaska.edu/NPS_products/eMODIS_NDVI/eMODIS_derived_NDVI_metrics/version_1.0/#{x}_oneyear_layer_subset_good_metrics_ver16m1_3") 
	system("wget http://static.gina.alaska.edu/NPS_products/eMODIS_NDVI/eMODIS_derived_NDVI_metrics/version_1.0/#{x}_oneyear_layer_subset_good_metrics_ver16m1_3.hdr")
end

#AVHRR
1995.upto(2015) do |x| 
        next if File.exists?("#{x}_stacked_ndvi_metrics_ver5")
        system("wget http://static.gina.alaska.edu/NPS_products/AVHRR_NDVI/AVHRR_derived_NDVI_metrics/#{x}_stacked_ndvi_metrics_ver5") 
	system("wget http://static.gina.alaska.edu/NPS_products/AVHRR_NDVI/AVHRR_derived_NDVI_metrics/#{x}_stacked_ndvi_metrics_ver5.hdr")
end

