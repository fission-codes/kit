module Kit.Internal.Components.Classes exposing (..)

import Kit.Internal.Components.Types exposing (..)


buttons : Buttons
buttons =
    { base = "font-medium inline-flex items-center truncate"
    , generic = "leading-relaxed px-3 py-1 rounded"
    , genericSmall = "px-2 py-1 rounded"
    , genericExtraSmall = "leading-none px-1 py-1 rounded"
    , signIn = "leading-relaxed px-5 py-2 rounded-full text-[15px] tracking-tight"
    }


root : Root
root =
    { buttons = buttons
    }
