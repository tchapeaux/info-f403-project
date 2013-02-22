import cfgrammar
import parser

def test_1():
	from grammars_examples import g2
	ll1_parser = parser.LL1Parser(g2)

	inputString = ['ID', '-', '(', 'ID', ')', '$']
	out = ll1_parser.parse(inputString)
	assert out[-1] == 'A'

	inputString = ['ID', '-', '(', 'ID', '(', ')', '$']
	out = ll1_parser.parse(inputString)
	assert out[-1] == 'E'

def test_2():
	from grammars_examples import g3
	ll1_parser = parser.LL1Parser(g3)

	inputString = ['id', '*', '(', 'id', '+', 'id', ')', '$']
	out = ll1_parser.parse(inputString)
	assert out[-1] == 'A'

test_1()
test_2()
