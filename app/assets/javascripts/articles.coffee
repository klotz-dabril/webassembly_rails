# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#
ready = ->
  Fib().then (module) ->
    fib = new module.Fib(11)
    console.log("Constructor: " + fib)

    console.log("Calling instance method: " + fib.next())

    fib.x = 6
    console.log("Setting and getting property x: " + fib.x)

    console.log("Calling a class method: " + module.Fib.calculate(1))

    fib.hello()




$(document).on "turbolinks:load", ready
