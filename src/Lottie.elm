module Lottie exposing (lottie, path, loop, autoplay)

import Html exposing (Html, node, Attribute)
import Html.Attributes exposing (attribute)
import List

lottie : List (Attribute msg) -> List (Html msg) -> Html msg
lottie = node "elm-lottie"


path : String -> Attribute msg
path value = attribute "data-path" value

loop : Bool -> Attribute msg
loop value = attribute "data-loop" (parseBoolToString value)

autoplay : Bool -> Attribute msg
autoplay value = attribute "data-autoplay" (parseBoolToString value)


parseBoolToString : Bool -> String
parseBoolToString boolean =
   if boolean then
      "true"
   else
      "false"
      