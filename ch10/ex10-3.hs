-- Types

data PersistValue
    = PersistText Text
    | PersistByteString ByteString
    | PersistInt64 Int64
    | PersistDouble Double
    | PersistRational Rational
    | PersistBool Bool
    | PersistDay Day
    | PersistTimeOfDay TimeOfDay
    | PersistUTCTime UTCTime
    | PersistNull
    | PersistList [PersistValue]
    | PersistMap [(Text, PersistValue)]
    | PersistObjectId ByteString
    -- ^ Intended especially for MongoDB backend
    | PersistDbSpecific ByteString
    -- ^ Using 'PersistDbSpecific' allows you to use types
    -- specific to a particular backend