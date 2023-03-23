-- Fetching by unique constraint

personId <- insert $ Person "Michael" "Snoyman" 26
maybePerson <- getBy $ PersonName "Michael" "Snoyman"
case maybePerson of
    Nothing -> liftIO $ putStrLn "Just kidding, not really there"
    Just (Entity personId person) -> liftIO $ print person