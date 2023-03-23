-- Select functions

people <- selectList [PersonAge >. 25, PersonAge <=. 30] []
liftIO $ print people



people <- selectList
    (       [PersonAge >. 25, PersonAge <=. 30]
        ||. [PersonFirstName /<-. ["Adam", "Bonny"]]
        ||. ([PersonAge ==. 50] ||. [PersonAge ==. 60])
    )
    []
liftIO $ print people