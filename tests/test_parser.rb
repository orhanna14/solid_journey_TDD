require_relative '../lib/parser.rb'
require "test/unit"

class TestParser < Test::Unit::TestCase
  def test_peek()
    result = Parser.peek([['stop', 'the'], ['noun', 'princess']])
    assert_equal('stop', result)
    assert_equal(nil, Parser.peek(nil))
  end

  def test_match()
    result = Parser.match([['stop', 'the'], ['noun', 'princess']], 'noun')
    assert_equal(nil, Parser.match(nil, 'noun'))
    assert_equal(nil, Parser.match(['noun', 'princess'], 'noun'))
  end

  def test_skip()
    assert_equal(nil, Parser.skip([['stop', 'the'], ['noun', 'bear']], 'stop'))
  end

  def test_parse_verb()
    result = Parser.parse_verb([['stop', 'the'], ['stop', 'at'], ['verb', 'run'], ['direction', 'south']])
    assert_equal(['verb', 'run'], result)

    assert_raise ParserError do
      Parser.parse_verb([['stop', 'at'], ['stop', 'the'], ['noun', 'bear']])
    end
  end

  def test_parse_object()
    result = Parser.parse_object([['stop', 'the'], ['stop', 'at'], ['direction', 'south']])
    assert_equal(['direction', 'south'], result)

    assert_raise ParserError do
      Parser.parse_object([['stop', 'at'], ['stop', 'the'], ['verb', 'run']])
    end
  end

  def test_parse_subject()
    result = Parser.parse_subject([['stop', 'the'], ['stop', 'at'], ['noun', 'bear']])
    assert_equal(['noun', 'bear'], result)

    assert_raise ParserError do
      Parser.parse_subject([['stop', 'at'], ['stop', 'the'], ['direction', 'south']])
    end
  end

  def test_parse_sentence()
    sentence = Parser.parse_sentence([['stop', 'the'],['noun', 'bear'],
    ['verb', 'ran'], ['stop', 'to'], ['stop', 'the'],
    ['noun', 'princess']])
    
    assert_equal('bear', sentence.subject)
    assert_equal('ran', sentence.verb)
    assert_equal(1, sentence.number)
    assert_equal('princess', sentence.object)
  end
end