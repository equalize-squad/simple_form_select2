window.SimpleForm = {};
class SimpleForm.Select2Input
  constructor: ->
    @$autocomplete = $('.simple_form select.select2')
    @$attribute = @$autocomplete.data('attribute')
    @$identifier = @$autocomplete.data('identifier')
    @$theme = @$autocomplete.data('theme')
    @$source = @$autocomplete.data('source')
    @$allow_clear = !@$autocomplete.prop('multiple')
    @bind()

  bind: ->
    @bind_autocomplete()

  bind_autocomplete: =>
    if @$autocomplete.length > 0
      @$autocomplete.select2
        theme: @$theme
        allowClear: @$allow_clear
        ajax:
          url: @$source
          dataType: 'json'
          delay: 250
          data: (params) ->
            q: params.term
          processResults: (data, params) =>
            params.page = params.page or 1
            results: data.map (item) =>
              { id: item[@$identifier], text: item[@$attribute] }
            pagination: more: params.page * 30 < data.total_count
            cache: true
           minimumInputLength: 1

$(document).on 'ready page:load', ->
  window.SimpleForm.select2_input = new SimpleForm.Select2Input()
