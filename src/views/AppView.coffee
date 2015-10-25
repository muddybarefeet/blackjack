class window.AppView extends Backbone.View
  template: _.template '
    <button class="hit-button">Hit</button> <button class="stand-button">Stand</button>
    <button class="chip5" value="5">5</button>
    <button class="chip25" value="25">25</button>
    <button class="chip100" value="100">100</button>
    <div class="player-hand-container"></div>
    <div class="dealer-hand-container"></div>
  '

  events:

    'click .hit-button': -> @model.get('playerHand').hit()
    'click .stand-button': -> @model.get('playerHand').stand()
    'click .chip5': -> console.log @
    # @model.get('app').bet()


  initialize: ->
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template()
    @$('.player-hand-container').html new HandView(collection: @model.get 'playerHand').el
    @$('.dealer-hand-container').html new HandView(collection: @model.get 'dealerHand').el

