{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_HellsTriangle (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/henrique/Desktop/SkyHub/HellsTriangle/.stack-work/install/i386-linux/lts-10.2/8.2.2/bin"
libdir     = "/home/henrique/Desktop/SkyHub/HellsTriangle/.stack-work/install/i386-linux/lts-10.2/8.2.2/lib/i386-linux-ghc-8.2.2/HellsTriangle-0.1.0.0-9rOAbubew072BJw2NeX0na-HellsTriangle-exe"
dynlibdir  = "/home/henrique/Desktop/SkyHub/HellsTriangle/.stack-work/install/i386-linux/lts-10.2/8.2.2/lib/i386-linux-ghc-8.2.2"
datadir    = "/home/henrique/Desktop/SkyHub/HellsTriangle/.stack-work/install/i386-linux/lts-10.2/8.2.2/share/i386-linux-ghc-8.2.2/HellsTriangle-0.1.0.0"
libexecdir = "/home/henrique/Desktop/SkyHub/HellsTriangle/.stack-work/install/i386-linux/lts-10.2/8.2.2/libexec/i386-linux-ghc-8.2.2/HellsTriangle-0.1.0.0"
sysconfdir = "/home/henrique/Desktop/SkyHub/HellsTriangle/.stack-work/install/i386-linux/lts-10.2/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "HellsTriangle_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "HellsTriangle_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "HellsTriangle_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "HellsTriangle_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "HellsTriangle_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "HellsTriangle_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
