-- Fetching by ID

personId <- insert $ Person "Michael" "Snoyman" 26
maybePerson <- get personId
case maybePerson of
    Nothing -> liftIO $ putStrLn "Just kidding, not really there"
    Just person -> liftIO $ print person