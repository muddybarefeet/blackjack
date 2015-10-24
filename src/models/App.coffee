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
      dealer = @get 'dealerHand'
      dealer.models[0].flip()
      player =  @get 'playerHand'
      dealer.playerScore = player.playerScore
      @get('dealerHand').hit()
    ), @


   
  





