-- Custom Fields

{-# LANGUAGE EmptyDataDecls             #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE QuasiQuotes                #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DataKinds #-}
import Database.Persist.Sqlite
import Database.Persist.TH
import Employment

share [mkPersist sqlSettings, mkMigrate "migrateAll"] [persistLowerCase|
Person
    name String
    employment Employment
|]

main :: IO ()
main = runSqlite ":memory:" $ do
    runMigration migrateAll

    insert $ Person "Bruce Wayne" Retried
    insert $ Person "Peter Parker" Unemployed
    insert $ Person "Michael" Employed

    return ()