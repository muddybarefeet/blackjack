class window.Hand extends Backbone.Collection
  model: Card

  initialize: (array, @deck, @isDealer, @playerScore) ->

  hit: ->

    # @.set('playerScore', @minScore() )
    # if card chosen added to the total is greater than 21
    # prompt player loses
    # initialize new deck model that should render new game
    
    @models[0].flip()
    # flipped = flipped || false
    if @isDealer 
      console.log 'in dealer'


    card = @deck.pop()
    if card.get('value') + @minScore() > 21 
      @add(card)
      alert "You Lose"
    else 
      @add(card)
      @last()
  ,

  stand: ->
    #remove covered class from all cards of the dealer
      #@app.set 'playerScore', @minScore()
      @.score = @minScore()
      @trigger('stand', @)
      # console.log @
    #dealer check his hand to see if hand is > 17 or < 17
    #if @minScore() >= 17
      #@minScore compare to the users score

    #if <17 add card until greater than 17
    #compare dealers hand to players value
    #re render TOTALS
    #alert who has won pls score
  ,

  hasAce: -> @reduce (memo, card) ->
    memo or card.get('value') is 1
  , 0

  minScore: -> @reduce (score, card) ->
    score + if card.get 'revealed' then card.get 'value' else 0
  , 0

  scores: ->
    # The scores are an array of potential scores.
    # Usually, that array contains one element. That is the only score.
    # when there is an ace, it offers you two scores - the original score, and score + 10.
    [@minScore(), @minScore() + 10 * @hasAce()]



