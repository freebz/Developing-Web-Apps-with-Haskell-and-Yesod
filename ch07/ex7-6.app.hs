-- Arguments

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE ViewPatterns      #-}
import           Data.Text (Text)
import qualified Data.Text as T
import           Yesod

data App = App

mkYesod "App" [parseRoutes|
/person/#Text PersonR GET
/year/#Integer/month/#Text/day/#Int DateR
/wiki/*Texts WikiR GET
|]

instance Yesod App

getPersonR :: Text -> Handler Html
getPersonR name = defaultLayout [whamlet|<h1>Hello #{name}!|]

handleDateR :: Integer -> Text -> Int -> Handler Text -- text/plain
handleDateR year month day =
    return $
        T.concat [month, " ", T.pack $ show day, ", ", T.pack $ show year]

getWikiR :: [Text] -> Handler Text
getWikiR = return . T.unwords

main :: IO ()
main = warp 3000 App