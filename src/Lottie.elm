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
   loopValue
   |> (\ value -> 
      case value of
         Once ->
            "false"
         Forever ->
            "true"
         Amount amount ->
            String.fromInt amount
      )
   |> attribute "data-loop"

play : Bool -> Attribute msg
play playValue = 
   playValue
   |> (\ value ->
      if value then
         "true"
      else
         "false"
   )
   |> attribute "data-play"
