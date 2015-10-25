assert = chai.assert
expect = chai.expect

describe 'deck', ->
  deck = null
  hand = null

  beforeEach ->
    `deck = new Deck()`
    `dealer = deck.dealDealer()`
    `hand = deck.dealPlayer()`

  describe 'hit', ->

    it 'should check if the instance is a dealer', ->
      ###make a dealer instance and check that its a dealer###
      `expect(dealer.isDealer).to.be.true`

    it 'should return the new length of the deck from the last function', ->
      assert.strictEqual deck.models.length, 48


    it 'should check if player receives a card when hit is pressed', ->
      `hand.hit()`
      `expect(hand.models.length).to.equal(3)`

    it 'should always finish with a dealers score > 17', ->
      `dealer.hit()`
      `expect(dealer.minScore()).to.be.at.least(17)`


  describe 'stand', ->
    it 'should have a stand method', ->
      ###invoke the stand method on hand and see if it is defined###
      `expect(hand).to.have.property('stand')`

      
    it 'should update the player score when invoked', ->
      ###get the player score and then call the stand method and then call player.playerscore###
      `prevScore = expect(hand.playerscore)
       hand.hit()
      expect(prevScore.to.not.equal(hand.playerscore))`
