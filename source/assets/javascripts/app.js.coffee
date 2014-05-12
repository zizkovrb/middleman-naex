//= require ../_vendor/jquery-2.1.0.min.js

$(document).ready ->

  menu = $("#navigation-menu")
  menuToggle = $("#js-mobile-menu")
  $(menuToggle).on "click", (e) ->
    e.preventDefault()
    menu.slideToggle ->
      menu.removeAttr "style"  if menu.is(":hidden")  $(".accordion-tabs-minimal").each (index) ->
    $(this).children("li").first().children("a").addClass("is-active").next().addClass("is-open").show()

  $(".accordion-tabs-minimal").on "click", "li > a", (event) ->
    unless $(this).hasClass("is-active")
      event.preventDefault()
      accordionTabs = $(this).closest(".accordion-tabs-minimal")
      accordionTabs.find(".is-open").removeClass("is-open").hide()
      $(this).next().toggleClass("is-open").toggle()
      accordionTabs.find(".is-active").removeClass "is-active"
      $(this).addClass "is-active"
    else
      event.preventDefault()

  $(".js-vertical-tab-content").hide()
  $(".js-vertical-tab-content:first").show()

  # if in tab mode
  $(".js-vertical-tab").click (event) ->
    event.preventDefault()
    $(".js-vertical-tab-content").hide()
    activeTab = $(this).attr("rel")
    $("#" + activeTab).show()
    $(".js-vertical-tab").removeClass "is-active"
    $(this).addClass "is-active"
    $(".js-vertical-tab-accordion-heading").removeClass "is-active"
    $(".js-vertical-tab-accordion-heading[rel^='" + activeTab + "']").addClass "is-active"
    return


  # if in accordion mode
  $(".js-vertical-tab-accordion-heading").click (event) ->
    event.preventDefault()
    $(".js-vertical-tab-content").hide()
    accordion_activeTab = $(this).attr("rel")
    $("#" + accordion_activeTab).show()
    $(".js-vertical-tab-accordion-heading").removeClass "is-active"
    $(this).addClass "is-active"
    $(".js-vertical-tab").removeClass "is-active"
    $(".js-vertical-tab[rel^='" + accordion_activeTab + "']").addClass "is-active"
    return

