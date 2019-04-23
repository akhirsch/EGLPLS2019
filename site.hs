--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll


--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "content/*" $ do
        route $ setExtension "html"  `composeRoutes` gsubRoute "content/" (const "")
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls


    match "templates/*" $ compile templateCompiler

    match "schedule.pdf" $ do
      route   idRoute
      compile copyFileCompiler
