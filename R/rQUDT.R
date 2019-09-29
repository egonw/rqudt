.packageName <- "rQUDT"

require(rJava, quietly=TRUE)

.onLoad <- function(lib, pkg) {
    dlp<-Sys.getenv("DYLD_LIBRARY_PATH")
    if (Sys.info()['sysname'] == "Darwin") 
    {
        Sys.setenv("DYLD_LIBRARY_PATH"=sub("/usr/X11R6/lib","",dlp))
    }
    libJars = c("jqudt.jar")
    .jpackage(pkg, jars=libJars)
}

