-- Types of Pieces

newtype Natural = Natural Int
    deriving (Eq, Show, Read)

instance PathPiece Natural where
    toPathPiece (Natural i) = T.pack $ show i
    fromPathPiece s =
        case reads $ T.unpack s of
            (i, ""):_
                | i < 1 -> Nothing
                | otherwise -> Just $ Natural i
            [] -> Nothing



data Page = Page Text Text [Text] -- 2 or more
    deriving (Eq, Show, Read)

instance PathMultiPiece Page where
    toPathMultiPiece (Page x y z) = x : y : z
    fromPathMultiPiece (x:y:z) = Just $ Page x y z
    fromPathMultiPiece _ = Nothing