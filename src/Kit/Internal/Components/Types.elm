module Kit.Internal.Components.Types exposing (..)


type alias Buttons =
    { base : String
    , generic : String
    , genericSmall : String
    , genericExtraSmall : String
    , signIn : String
    }


type alias Root =
    { buttons : Buttons
    }
