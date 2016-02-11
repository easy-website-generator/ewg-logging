logging = require '../index'
expect  = require('chai').expect
spy     = require('sinon').spy

describe 'ewg/logging', ->
  a    = 1
  b    = [2]
  args = [a, b]

  describe '#log()', ->
    beforeEach ->
      spy(logging.console.log, 'apply')

    afterEach ->
      logging.console.log.apply.restore()

    it 'logs mulitple arguments', ->
        logging.log(a, b)
        expect( logging.console.log.apply.calledOnce ).to.be.true
