describe "Compiler", ->

  describe 'functions', ->
    When -> @js = Compiler.compile('->')
    Then -> expect(@js).toEqual("(function() {});")

  describe 'assignments', ->
    When -> @js = Compiler.compile('foo = 42')
    Then -> expect(@js).toEqual("var foo;  foo = 42;")