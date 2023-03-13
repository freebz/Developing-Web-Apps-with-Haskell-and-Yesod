-- Generating IDs

getRootR = defaultLayout $ do
    headerClass <- newIdent
    toWidget [hamlet|<h1 .#{headerClass}>My Header|]
    toWidget [lucius| .#{headerClass} { color: green; } |]