-- Create AForms

data Car = Car
    { carModel :: Text
    , carYear  :: Int
    }
  deriving Show

carAForm :: AForm Handler Car
carAForm = Car
    <$> areq textField "Model" Nothing
    <*> areq intField "Year" Nothing

carForm :: Html -> MForm Handler (FormResult Car, Widget)
carForm = renderTable carAForm



carAForm :: Maybe Car -> AForm Handler Car
carAForm mcar = Car
    <$> areq textField "Model" (carModel <$> mcar)
    <*> areq intField  "Year"  (carYear  <$> mcar)