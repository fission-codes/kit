module Kit.Internal.Components.Types exposing (..)


type alias Buttons =
    { base : String
    , generic : String
    , genericSmall : String
    , genericExtraSmall : String
    , genericTag : String
    }


type alias AppNames =
    { base : String
    , normal : String
    , large : String
    }


type alias Root =
    { buttons : Buttons
    , appNames : AppNames
    }
