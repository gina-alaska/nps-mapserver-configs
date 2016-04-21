#!/usr/bin/env ruby
#
# simple/fast reformat to geotif. 
#ignores nodata, as the defintion isn't clear.

gdal_opts = []
["TILED=YES", "COMPRESS=DEFLATE", "ZLEVEL=9", "BIGTIFF=YES"].each do |x| 
	gdal_opts << "-co"
	gdal_opts << x
end

#reformat ENVI files
ARGV.each do |item|
	target = File.basename(item) + ".tif"
	next if File.exists?(target)
	system("gdal_translate", *gdal_opts, item, target)
	system("add_overviews.rb", target)
end
