describe "Matcher", ->

  describe 'functions', ->
    When -> @matcher = new Matcher('->')
    Then -> expect(@matcher.matches('(function() {\n  (function() {});\n}).call(this);\n')).toEqual(true)

  describe 'assignments', ->
    When -> @js = Compiler.compile('foo = 42')
    Then -> expect(@js).toEqual("var foo;  foo = 42;")