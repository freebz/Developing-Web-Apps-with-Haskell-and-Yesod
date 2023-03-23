-- Manipulation

-- Insert

data Person = Person { name :: String }

data Person = Person { personId :: PersonId, name :: String }

data Person = Person { personId :: Maybe PersonId, name :: String }



-- Update

let michael = Person "Michael" 26
    michaelAfterBirthday = michael { personAge = 27 }


personId <- insert $ Person "Michael" "Snoyman" 26
update personId [PersonAge =. 27]


haveBirthday personId = update personId [PersonAge +=. 1]


updateWhere [PersonFirstName ==. "Michael"] [PersonAge *=. 2] -- it's been a long day


personId <- insert $ Person "Michael" "Snoyman" 26
replace personId $ Person "John" "Doe" 20



-- Delete

personId <- insert $ Person "Michael" "Snoyman" 26
delete personId
deleteBy $ PersonName "Michael" "Snoyman"
deleteWhere [PersonFirstName ==. "Michael"]


deleteWhere ([] :: [Filter Person])