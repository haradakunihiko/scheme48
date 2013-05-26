module Paths_scheme48 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/Harada/haskell/scheme48/cabal-dev//bin"
libdir     = "/Users/Harada/haskell/scheme48/cabal-dev//lib/scheme48-0.1.0.0/ghc-7.4.2"
datadir    = "/Users/Harada/haskell/scheme48/cabal-dev//share"
libexecdir = "/Users/Harada/haskell/scheme48/cabal-dev//libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "scheme48_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "scheme48_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "scheme48_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "scheme48_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
