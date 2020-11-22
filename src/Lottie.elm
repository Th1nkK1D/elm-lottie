module Lottie exposing (lottie, loop, play, Loop(..))

import Html exposing (Html, node, Attribute)
import Html.Attributes exposing (attribute)
import List


lottie : String -> List (Attribute msg) -> List (Html msg) -> Html msg
lottie path attributes =
   let
      combindedAttributes = attributes ++ [ attribute "data-path" path ]
   in
   node "elm-lottie" combindedAttributes


type Loop = Once | Forever | Amount Int

loop : Loop -> Attribute msg
loop loopValue =
   case loopValue of
      Once ->
         attribute "data-loop" "false"
      Forever ->
         attribute "data-loop" "true"
      Amount amount ->
         String.fromInt amount |> attribute "data-loop"

play : Bool -> Attribute msg
play value = 
   if value then
      attribute "data-play" "true"
   else
      attribute "data-play" "false"
      