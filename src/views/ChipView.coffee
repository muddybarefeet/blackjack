###here where render chips to the page#####

class window.CardView extends Backbone.View
  className: 'chip'

  template: _.template '<%= betValue %>'

  initialize: -> @render()
  

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    # @$el.addClass 'covered' unless @model.get 'revealed'