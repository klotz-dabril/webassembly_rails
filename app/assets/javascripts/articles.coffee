# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#
ready = ->
  Fib().then (le) ->
    api = { fib: le.cwrap('fib', 'number', ['number']) }
    console.log(api.fib(12))


  # Module.onRuntimeInitialized =  ->
    # api = { fib: Module.cwrap('fib', 'number', ['number']) }
    # console.log(api.fib(12))



$(document).on "turbolinks:load", ready
