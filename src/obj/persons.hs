data User = User 
    { id :: Integer
    , name :: String
    }

user1 = User { id = 1, name = "Vasyl" }

-- renderUser :: User -> String
-- renderUser user = [ text |
--         "<div id="uid-#{show (id user)}">
--             <span>Name: #{name user}</span>
--         </div>" 
-- | ]
-- quasiquoter [ | ... | ]

-- fmap renderUser [user1, user2]
-- => [
--     "<div id="uid-#{show (id user)}"><span>Name: #{name user}</span></div> "
--     "<div id="uid-#{show (id user)}"><span>Name: #{name user}</span></div> "
-- ]

main = putStr user1