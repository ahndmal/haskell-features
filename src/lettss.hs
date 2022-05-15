
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in sideArea + 2 * topArea

--

-- [if 5 > 3 then "Woo" else "Boo", if 'a' > 'b' then "Foo" else "Bar"]
-- 4 * (let a = 9 in a + 1) + 2
-- 4 * (let a = 9 in a + 1) + 2

-- square x = x * x in (square 5, square 3, square 2)

-- (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)
--     (6000000,"Hey there!")
--

a = 100, b = 200 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar

boot x y z = x * y + z in boot 3 4 2

--
--

main = putStrLn . show $ doubleSmallNumber 4
