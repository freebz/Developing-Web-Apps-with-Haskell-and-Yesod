-- Custom fields

passwordConfirmField :: Field Handler Text
passwordConfirmField = Field
    { fieldParse = \rawVals _fileVals ->
        case rawVals of
            [a, b]
                | a == b -> return $ Right $ Just a
                | otherwise -> return $ Left "Passwords don't match"
            [] -> return $ Right Nothing
            _ -> return $ Left "You must enter two values"
    , fieldView = \idAttr nameAttr otherAttrs eResult isReq ->
        [whamlet|
            <input id=#{idAttr} name={nameAttr} *{otherAttrs} type=password>
            <div>Confirm:
            <input id=#{idAttr}-confirm name=#{nameAttr} *{otherAttrs} type=password>
        |]
    , fieldEnctype = urlEncoded
    }

getHomeR :: Handler Html
getHomeR = do
    ((res, widget), enctype) <- runFormGet $ renderDivs
        $ areq passwordConfirmField "Password" Nothing
    defaultLayout
        [whamlet|
            <p>Result: #{show res}
            <form enctype=#{enctype}>
                ^{widget}
                <input type=submit value="Change password">
        |]