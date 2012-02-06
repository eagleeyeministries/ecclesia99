# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('a#signup').click( ->
    $(this).modal('show')
  )
  $('a.lightbox').each( ->
    $(this).lightBox()
  )
  pagePath = window.location.pathname
  if (pagePath.indexOf("about") != -1)
    $('ul.nav li#about').addClass('active')
  else if (pagePath.indexOf("community") != -1)
    $('ul.nav li#community').addClass('active')
  else if (pagePath.indexOf("course") != -1)
    $('ul.nav li#courses').addClass('active')
  else if (pagePath.indexOf("contact") != -1)
    $('ul.nav li#contact').addClass('active')
  else
    $('ul.nav li#home').addClass('active')
