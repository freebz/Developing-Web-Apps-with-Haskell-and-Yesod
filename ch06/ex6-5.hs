-- Smarter Static Files

urlRenderOverride y (StaticR s) =
    Just $ uncurry (JoinPath y (Settings.staticRoot $ settings y))
         $ renderRoute s

urlRenderOverride _ _ = Nothing



urlParamRenderOverride :: site
                       -> Route site
                       -> [(T.Text, T.Text)] -- ^ query string
                       -> Maybe Builder
urlParamRenderOverride y (StaticR s) _ =
    Just $ uncurry (joinPath y (Settings.staticRoot $ settings y)) $ renderRoute s
urlRenderOverride _ _ _ = Nothing