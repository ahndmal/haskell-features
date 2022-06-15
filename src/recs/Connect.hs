data ConnType = TCP | UDP
data UseProxy = NoProxy | Proxy String
data TimeOut = NoTimeOut | TimeOut Integer
data Connection = ...  -- Definition omitted
connect :: String -> ConnType -> Integer -> UseProxy
        -> Bool -> Bool -> TimeOut -> Connection


connectUrl :: String -> Connection
connectUrl u = connect u TCP 0 NoProxy False False NoTimeOut

