share [mkPersist sqlSettings, mkMigrate "migrateAll"] [persistLowerCase|
Person sql=the-person-table id=numeric_id
    firatName String sql=first_name
    lastName String sql=fldLastName
    age Int "sql=The Age of the Person"
    PersonName firstName lastName
    deriving Show
|]