% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_timeseries_dsg.R
\name{write_timeseries_dsg}
\alias{write_timeseries_dsg}
\title{Create timeseries NCDF file}
\usage{
write_timeseries_dsg(nc_file, station_names, lats, lons, times, data,
  alts = NA, data_unit = "", data_prec = "double",
  data_metadata = list(name = "data", long_name = "unnamed data"),
  attributes = list())
}
\arguments{
\item{nc_file}{A string file path to the nc file to be created.}

\item{lats}{Vector of latitudes}

\item{lons}{Vector of longitudes}

\item{times}{A vector of times. Must be of type \code{\link{POSIXct}} or an attempt to 
convert it will be made using \code{\link{as.POSIXct(times)}}.}

\item{data}{\code{data.frame} with each column corresponding to a station. Rows correspond to 
time steps. nrow must be the same length as times. Column names must match station names.}

\item{alts}{Vector of altitudes (Optional)}

\item{data_prec}{Precision of observation data in NCDF file. 
Valid options: 'short' 'integer' 'float' 'double' 'char'.}

\item{data_metadata}{A named list of strings: list(name='ShortVarName', long_name='A Long Name')}

\item{attributes}{An optional list of attributes that will be added at the global level. 
See details for useful attributes.}

\item{data_units}{Character vector of observation units. Length must be the same as number 
of columns in \code{data} parameter}
}
\description{
This creates a timeseries discrete sampling geometry NCDF file
}
\details{
title = "title"
abstract = "history"
provider site = "institution"
provider name ="source"
description = "description"
}
\references{
http://www.unidata.ucar.edu/software/thredds/current/netcdf-java/reference/FeatureDatasets/CFpointImplement.html
}

