# nps-mapserver-configs
mapserver configs for NPS OGC stuff, mainly WCS and WMS. 

# notes on how it is supposed to be structured:

  NPS approved your idea of changing float values into integer values for metrics in order to improve the loading speed for WCS server to client. So please do following things for me.
  1. change 12-band of float value snow metrics into 12-band integer snow metrics ( 2001 to 2014).
  2. create another WCS directory to provide 5-band MODIS NDVI metrics, they 5 bands are :1,3,5,6,12. (2000 to 2013)
  3. please create 12-band AVHRR NDVI metrics WCS server the data are at: http://dds.gina.alaska.edu/public/public/NPS_products/AVHRR_NDVI/AVHRR_derived_NDVI_metrics/ (1995 to 2013)
  4. please create a 5-band AVHRR NDVI metrics WCS server directory. the 5 bands are:1,3,5,6,12. (1995 to 2013)

The 5 bands should be unsigned integers, repersenting days
The 13 band version are 32 bit floating point. 

# Urls in use:
* http://ndvi.gina.alaska.edu/metrics/avhrr
* http://ndvi.gina.alaska.edu/metrics/avhrr_5bands
* http://ndvi.gina.alaska.edu/metrics/emodis
* http://ndvi.gina.alaska.edu/metrics/emodis_5bands
