-- Controlling sessions

instance Yesod App where
    makeSessionBackend _ = return Nothing



instance Yesod App where
    makeSessionBackend _ =
        fmap Just $ defaultClientSessionBackend minutes filepath
      where minutes = 24 * 60 -- 1 day
            filepath = "mykey.aes"