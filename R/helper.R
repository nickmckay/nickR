
#' @title Clear all variables and functions from global environment
#' @description Removes all variables and functions from global environment. Use at your own risk.
#' @export
clearAll = function(){
  rm(list = ls(envir = .GlobalEnv),envir = .GlobalEnv)
}

#' @export
#' @title Detach all packages
#' @description Detachs all packages
detachAll = function(){
  pkgs = names(sessionInfo()$otherPkgs)
  pkgs = paste('package:', pkgs, sep = "")
  lapply(pkgs, detach, character.only = TRUE, unload = TRUE)
}

#' @export
#' @family LiPD manipulation
#' @title Flip Coordinates
#' @description Swap latitude and longitude in a LiPD object
#' @param L a LiPD object
#' @return a LiPD object
flipCoords = function(L){
  olat = L$geo$latitude
  olon = L$geo$longitude
  L$geo$longitude=olat
  L$geo$latitude= olon
  return(L)
}
