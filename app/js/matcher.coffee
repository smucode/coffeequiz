window.Matcher = class Matcher

  constructor: (cs) ->
    @js = CoffeeScript.compile cs
    console.log 'x' + @js + 'x'

  matches: (js) ->
    js is @js