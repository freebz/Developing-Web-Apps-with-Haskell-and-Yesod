-- Rendering and Parsing URLs

mkYesod "MyApp" [parseRoutes|
/some/path SomePathR GET
|]


instance Yesod MyWiki where
    approot = ApprootStatic "http://static.example.com/wiki"