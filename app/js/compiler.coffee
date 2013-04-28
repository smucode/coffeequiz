window.Compiler =
  compile: (cs) ->
    js = CoffeeScript.compile cs

    arr = _.compact js.split '\n'
    arr[0] = arr[arr.length - 1] = ''
    str =  arr.join('')

    str = str.trim()

    str