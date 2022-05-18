comp1 x = [x*2 | x <- [1..10]]
-- [2,4,6,8,10,12,14,16,18,20]

comp2 = [x*2 | x <- [1..10], x*2 >= 12]

boomBangs xs = 
    [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

comp3 = [ x*y | x <- [2,5,10], y <- [8,10,11]]


nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
res = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
--["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog",
--"grouchy pope","scheming hobo","scheming frog","scheming pope"]