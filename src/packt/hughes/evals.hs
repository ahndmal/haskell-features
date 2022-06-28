-- options are the same
-- 1 - usual, 2 - monads, 3 - do

eval0 :: Expr -> Maybe Int
eval0 (Vid n) = Just n
eval0 (Div x y) = case eval x of
                    Nothing -> Nothing
                    Just n -> case eval y of
                        Nothing -> Nothing
                        Just m -> safediv n m

eval1 :: Expr -> Maybe Int
eval1 (Val n) = Just n
eval1 (Div x y) = eval x >>= (\n ->
                  eval y >>= (\m ->
                  safediv n m ))

eval :: Expr -> Maybe Int
eval (Val n) = Just n
eval (Div x y) = do n <- eval x
                    m <- eval y
                    safediv n m