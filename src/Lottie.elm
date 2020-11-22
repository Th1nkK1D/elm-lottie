module Lottie exposing (lottie, loop, play)

import Html exposing (Html, node, Attribute)
import Html.Attributes exposing (attribute)
import List

lottie : String -> List (Attribute msg) -> List (Html msg) -> Html msg
lottie path attributes =
   let
      combindedAttributes = attributes ++ [ attribute "data-path" path ]
   in
   node "elm-lottie" combindedAttributes

loop : Bool -> Attribute msg
loop value = attribute "data-loop" (parseBoolToString value)

play : Bool -> Attribute msg
play value = attribute "data-play" (parseBoolToString value)


parseBoolToString : Bool -> String
parseBoolToString boolean =
   if boolean then
      "true"
   else
      "false"
      