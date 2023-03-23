-- Closer look at types

newtype Key entity = Key Int64
type PersonId = Key Person


data Key entity = KeyInt Int64 | KeyByteString ByteString


newtype Key entity = Key PersistValue


class PersistEntity record where
    data Key record
    ...