assert = chai.assert
expect = chai.expect

describe 'deck', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()
    dealer = deck.dealDealer()


  describe 'hit', ->
    it 'should give the last card from the deck', ->
      assert.strictEqual deck.length, 50
      assert.strictEqual deck.last(), hand.hit()
      assert.strictEqual deck.length, 49

    it 'should check if the instance is a dealer', ->
      ###make a dealer instance and check that its a dealer###
      `expect(dealer.isDealer).to.be.true`

    it 'should check if the dealer > 17 and player < dealer then dealer wins', ->
      `dealer.minScore() = 19`
      `dealer.playerscore = 15`
      `expect(dealer.hit()).to.equal("You Loose!")`

    it 'should always finish with a dealers score > 17', ->
      `expect(dealer.hit()).to.be >17`


  describe 'stand', ->
    it 'should have a stand method', ->
      ###invoke the stand method on hand and see if it is defined###
      `expext(hand.stand()).to.be.DEFINED`

      
    it 'should update the player score when invoked', ->
      ###get the player score and then call the stand method and then call player.playerscore###
      `prevScore = expect(hand.playerscore)
       hand.hit()
      expect(prevScore.to.not.equal(hand.playerscore)`
  
