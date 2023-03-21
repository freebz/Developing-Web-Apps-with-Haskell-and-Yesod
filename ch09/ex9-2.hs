-- Hardening via SSL

instance Yesod App where
    makeSessionBackend _ = sslOnlySessions $
        fmap Just $ defaultClientSessionBackend 120 "mykey.aes"
    yesodMiddleware = (sslOnlyMIddleware 120) . defaultYesodMiddleware