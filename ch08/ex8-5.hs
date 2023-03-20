-- More sophisticated fields

data Car = Car
    { carModel :: Text
    , carYear :: Int
    , carColor :: Maybe Color
    }
  deriving Show

data Color = Red | Blue | Gray | Black
    deriving (Show, Eq, Enum, Bounded)

carAForm :: Maybe Car -> AForm Handler Car
carAForm mcar = Car
    <$> areq textField "Model" (carModel <$> mcar)
    <*> areq carYearField "Year" (carYear <$> mcar)
    <*> aopt (selectFieldList colors) "Color" (carColor <$> mcar)
  where
    colors :: [(Text, Color)]
    colors = [("Red", Red), ("Blue", Blue), ("Gray", Gray), ("Black", Black)]



colors = map (pack . show &&& id) [minBound..maxBound]



carAForm :: Maybe Car -> AForm Handler Car
carAForm mcar = Car
    <$> areq textField "Model" (carModel <$> mcar)
    <*> areq carYearField "Year" (carYear <$> mcar)
    <*> aopt (selectField optionsEnum) "Color" (carColor <$> mcar)



carAForm = Car
    <$> areq textField                "Model" Nothing
    <*> areq intField                 "Year"  Nothing
    <*> aopt (radioField optionsEnum) "Color" Nothing