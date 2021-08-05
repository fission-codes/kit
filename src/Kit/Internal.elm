module Kit.Internal exposing (ifThenElse)


ifThenElse : Bool -> a -> a -> a
ifThenElse bool a b =
    if bool then
        a

    else
        b
