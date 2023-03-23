-- Solving the boundary issue

CREATE TABLE person(id SERIAL PRIMARY KEY, name VARCHAR NOT NULL, age INTEGER)


data Person = Person
    { personName :: Text
    , personAge  :: Int
    }