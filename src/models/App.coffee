# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model

  defaults =
    playerScore: 0

  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()
    
    @get('playerHand').on 'stand', (->
      player =  @get 'playerHand'
      dealer = @get 'dealerHand'
      dealer.set 'playerScore', player
      console.log dealer
    ), @


   
  





