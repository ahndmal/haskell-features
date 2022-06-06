readPrice :: L.ByteString -> Maybe Int
readPrice str =
 case L.readInt str of
    Nothing -> Nothing
    Just (dollars,rest) ->
        case L.readInt (L.tail rest) of
        Nothing -> Nothing
        Just (cents,more) ->
            Just (dollars * 100 + cents)
