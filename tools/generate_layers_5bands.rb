#!/usr/bin/env ruby
# simple script to make mapfiles for the metrics
require 'yaml'
config = []

ARGV.each do |item|
  name = File.basename(item, '.tif')
  title = name.split('_').join(' ')
  info = YAML.load(`gdal_list_corners #{ARGV.first}`)
  config << 'LAYER'
  config << "  NAME \"#{name}\""
  config << '  STATUS OFF'
  config << '  TYPE RASTER'
  config << '  DUMP TRUE'
  config << "  DATA \"#{item}\""
  config << '  include "includes/projections/3338.include.map"'
  config << '  PROCESSING "BANDS=1,3,5,6,12"'
  config << '  METADATA'
  config << "    wms_label \"#{title}\""
  config << "    wcs_label \"#{title}\""
  config << "    ows_extent \"#{info['geometry_en']['upper_left_east']} #{info['geometry_en']['lower_left_north']} #{info['geometry_en']['lower_right_east']} #{info['geometry_en']['upper_left_north']}\""
  config << "    wcs_resolution \"#{info['res_meters']}\""
  config << '    ows_srs "EPSG:3338"'
  config << '    wcs_formats "GEOTIFFINT16"'
  config << '    wcs_nativeformat "geotifint16"'
  config << '    wcs_bandcount "5"'
  config << '    wcs_rangeset_axes "Bands"'
  config << '    wcs_rangeset_label "Metrics Bands"'
  config << '    wcs_rangeset_name "Bands"'
  config << '  END'
  config << 'END'
end


puts config.join("\n")
