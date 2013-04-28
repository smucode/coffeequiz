window.helloText = -> 'Hello, World!'

window.hello = ->
  html = JST['app/templates/hello.us'](text: helloText())
  document.body.innerHTML += html

  js = document.getElementById 'js'
  cs = document.getElementById 'cs'
  js.focus()

  js.addEventListener 'keyup', ->
    js.className = if js.value is Compiler.compile(cs.value) then 'right' else 'wrong'

if window.addEventListener
  window.addEventListener('DOMContentLoaded', hello, false)
else
  window.attachEvent('load', hello)