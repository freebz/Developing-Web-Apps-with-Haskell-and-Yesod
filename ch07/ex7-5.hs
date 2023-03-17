-- Dispatch

-- Return Type

mkYesod "Simple" [parseRoutes|
/ HomeR GET
|]

getHomeR :: Handler Html
getHomeR = defaultLayout [whamlet|<h1>This is simple|]



-- Handler monad

data HandlerT site m a


type Handler = HandlerT MyApp IO



-- Html

data TypedContent = TypedContent !ContentType !Content


class ToTypedContent a where
    toTypedContent :: a -> TypedContent