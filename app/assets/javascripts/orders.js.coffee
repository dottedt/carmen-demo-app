# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('select#order_country_code').change (event) ->
    select_wrapper = $('#order_state_code_wrapper')
    $('select', select_wrapper).attr('disabled', true)
    country_code = $(this).val()
    url = "/orders/subregion_options?parent_region=#{country_code}"
    select_wrapper.load(url)

  $('#company_subregion_code_wrapper').change (event) ->
    city_wrapper = $('#company_city_wrapper')
    $('select', city_wrapper).attr('disabled', true)
    country_code = $('select#company_country_code').val()
    subregion_code = $('select#company_subregion_code').val()
    url = "/city_options?country_code=#{country_code}&subregion_code=#{subregion_code}"
    city_wrapper.load(url)