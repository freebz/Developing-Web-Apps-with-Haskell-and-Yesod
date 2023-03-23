-- @Employment.hs
{-# LANGUAGE TemplateHaskell #-}
module Employment where

import Database.Persist.TH

data Employment = Employed | Unemployed | Retried
    deriving (Show, Read, Eq)
derivePersistField "Employment"