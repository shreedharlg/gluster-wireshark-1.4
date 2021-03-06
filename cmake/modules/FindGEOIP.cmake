#
# $Id$
#
# - Find GeoIP
# Find the native GEOIP includes and library
#
#  GEOIP_INCLUDE_DIRS - where to find GeoIP.h, etc.
#  GEOIP_LIBRARIES    - List of libraries when using GeoIP.
#  GEOIP_FOUND        - True if GeoIP found.


IF (GEOIP_INCLUDE_DIRS)
  # Already in cache, be silent
  SET(GEOIP_FIND_QUIETLY TRUE)
ENDIF (GEOIP_INCLUDE_DIRS)

FIND_PATH(GEOIP_INCLUDE_DIR GeoIP.h)

SET(GEOIP_NAMES GeoIP)
FIND_LIBRARY(GEOIP_LIBRARY NAMES ${GEOIP_NAMES} )

# handle the QUIETLY and REQUIRED arguments and set GEOIP_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GEOIP DEFAULT_MSG GEOIP_LIBRARY GEOIP_INCLUDE_DIR)

IF(GEOIP_FOUND)
  SET( GEOIP_LIBRARIES ${GEOIP_LIBRARY} )
  SET( GEOIP_INCLUDE_DIRS ${GEOIP_INCLUDE_DIR} )
ELSE(GEOIP_FOUND)
  SET( GEOIP_LIBRARIES )
  SET( GEOIP_INCLUDE_DIRS )
ENDIF(GEOIP_FOUND)

MARK_AS_ADVANCED( GEOIP_LIBRARIES GEOIP_INCLUDE_DIRS )
