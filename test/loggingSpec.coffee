logging = require '../index'
expect  = require('chai').expect
sinon   = require 'sinon'

describe 'ewg/logging', ->
  a    = 1
  b    = [2]
  args = [a, b]

  describe '#log()', ->
    beforeEach ->
      sinon.spy(logging.console.log, 'call')

    afterEach ->
      logging.console.log.call.restore()

    it 'logs mulitple arguments', ->
        logging.log(a, b)
        expect( logging.console.log.call.calledOnce ).to.be.true
        expect( logging.console.log.call.calledWith(args) ).to.be.true
