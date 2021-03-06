% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_point_dsf.R
\name{write_point_dsg}
\alias{write_point_dsg}
\title{Create point data NCDF file}
\usage{
write_point_dsg(nc_file, times, lats, lons, alts, data, data_units = rep("",
  ncol(data)), data_prec = rep("double", ncol(data)))
}
\arguments{
\item{nc_file}{A string file path to the nc file to be created.}

\item{times}{A vector of times. Must be of type \code{\link{POSIXct}} or an attempt to 
convert it will be made using \code{\link{as.POSIXct(times)}}.}

\item{lats}{Vector of latitudes}

\item{lons}{Vector of longitudes}

\item{alts}{Vector of altitudes}

\item{data}{\code{data.frame} with each column corresponding to a observation. Column 
names are used as names in the NCDF file}

\item{data_units}{Character vector of observation units. Length must be the same as number 
of columns in \code{data} parameter}

\item{data_prec}{Precision of observation data in NCDF file. 
Valid options: 'short' 'integer' 'float' 'double' 'char'.}
}
\description{
This creates a simple point data discrete sampling features NCDF file
}
\references{
http://www.unidata.ucar.edu/software/thredds/current/netcdf-java/reference/FeatureDatasets/CFpointImplement.html
}

