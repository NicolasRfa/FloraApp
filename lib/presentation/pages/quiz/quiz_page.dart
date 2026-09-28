import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final Map<int, int> _singleAnswers = {};
  final Map<int, Set<int>> _multipleAnswers = {};
  bool _checked = false;

  static const Color _green = Color(0xFF78C982);
  static const Color _paleGreen = Color(0xFFE1F6E8);
  static const Color _darkGreen = Color(0xFF28764C);

  final List<List<String>> _singleQuestions = const [
    [
      'Qual destes animais é um invertebrado?',
      'Caracol',
      'Gato',
      'O caracol não possui coluna vertebral.',
    ],
    [
      'Como são chamadas as células que possuem núcleo definido?',
      'Eucariontes',
      'Procariontes',
      'Células eucariontes possuem núcleo delimitado.',
    ],
    [
      'Qual grupo de animais possui penas?',
      'Aves',
      'Anfíbios',
      'As penas são características das aves.',
    ],
    [
      'Qual destes animais é um invertebrado?',
      'Borboleta',
      'Lagarto',
      'A borboleta é um inseto e não possui coluna vertebral.',
    ],
  ];

  final List<String> _statements = const [
    'Os mamíferos possuem glândulas mamárias.',
    'As aves possuem glândula uropigiana.',
    'Todos os peixes respiram por pulmões.',
    'Os anfíbios passam parte da vida na água e parte em ambiente terrestre.',
    'Todos os insetos possuem oito patas.',
  ];

  final Set<int> _correctStatements = {0, 1, 3};

  int get _score {
    var total = 0;
    for (var i = 0; i < _singleQuestions.length; i++) {
      if (_singleAnswers[i] == 0) total++;
    }
    final selected = _multipleAnswers[0] ?? <int>{};
    if (selected.length == _correctStatements.length &&
        selected.containsAll(_correctStatements)) {
      total++;
    }
    return total;
  }

  bool _isSingleCorrect(int question) => _singleAnswers[question] == 0;

  Color _questionColor(bool correct) => correct
      ? const Color(0xFFE2F5E9)
      : const Color(0xFFFFE7E5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _paleGreen,
      appBar: AppBar(
        backgroundColor: _green,
        foregroundColor: Colors.white,
        title: const Text('QuizBotânica'),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 20),
              children: [
                Container(
                  height: 210,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F5EC),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.eco, size: 58, color: _darkGreen),
                        SizedBox(height: 4),
                        Text(
                          'HORA DO',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF8D1616),
                          ),
                        ),
                        Text(
                          'QUIZ!',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF23431A),
                          ),
                        ),
                        Text('BIOLOGIA • 5 PERGUNTAS'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                for (var i = 0; i < _singleQuestions.length; i++)
                  _singleQuestionCard(i),
                _multipleQuestionCard(),
                if (_checked) _resultCard(),
              ],
            ),
          ),
          _bottomBar(),
        ],
      ),
    );
  }

  Widget _singleQuestionCard(int index) {
    final question = _singleQuestions[index];
    final answered = _singleAnswers.containsKey(index);
    final correct = _isSingleCorrect(index);
    final answerColor = _checked && answered
        ? _questionColor(correct)
        : Colors.white;

    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _paleGreen,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Pergunta ${index + 1}) ${question[0]}',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 8),
            for (var option = 0; option < 2; option++)
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: _checked && _singleAnswers[index] == option
                      ? _questionColor(option == 0)
                      : answerColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Radio<int>(
                      value: option,
                      groupValue: _singleAnswers[index],
                      activeColor: _darkGreen,
                      onChanged: _checked
                          ? null
                          : (value) =>
                                setState(() => _singleAnswers[index] = value!),
                    ),
                    Expanded(child: Text(question[option + 1])),
                  ],
                ),
              ),
            if (_checked)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  !answered
                      ? 'Não respondida. Resposta: ${question[1]}.'
                      : correct
                      ? 'Correta! ${question[3]}'
                      : 'Incorreta. Resposta: ${question[1]}. ${question[3]}',
                  style: TextStyle(
                    color: correct ? _darkGreen : const Color(0xFFAD3028),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _multipleQuestionCard() {
    final selected = _multipleAnswers[0] ?? <int>{};
    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _paleGreen,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Pergunta 5) Selecione as afirmativas corretas',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 8),
            for (var i = 0; i < _statements.length; i++)
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: _checked && selected.contains(i)
                      ? _questionColor(_correctStatements.contains(i))
                      : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: selected.contains(i),
                      activeColor: _darkGreen,
                      onChanged: _checked
                          ? null
                          : (value) => setState(() {
                              final answers = _multipleAnswers.putIfAbsent(
                                0,
                                () => <int>{},
                              );
                              if (value == true) {
                                answers.add(i);
                              } else {
                                answers.remove(i);
                              }
                            }),
                    ),
                    Expanded(child: Text(_statements[i])),
                  ],
                ),
              ),
            if (_checked)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Corretas: mamíferos, aves e anfíbios. ${_isMultipleCorrect() ? 'Resposta correta!' : 'Confira as opções marcadas.'}',
                  style: TextStyle(
                    color: _isMultipleCorrect()
                        ? _darkGreen
                        : const Color(0xFFAD3028),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  bool _isMultipleCorrect() {
    final selected = _multipleAnswers[0] ?? <int>{};
    return selected.length == _correctStatements.length &&
        selected.containsAll(_correctStatements);
  }

  Widget _resultCard() => Card(
    color: const Color(0xFF28764C),
    child: Padding(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: Text(
          'Sua pontuação: $_score de 5',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );

  Widget _bottomBar() => Container(
    width: double.infinity,
    padding: const EdgeInsets.fromLTRB(16, 10, 16, 14),
    color: const Color(0xFFC9F0D6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          tooltip: 'Voltar ao início',
          icon: const Icon(Icons.home, size: 30),
          onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _darkGreen,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          onPressed: () => setState(() => _checked = true),
          child: Text(_checked ? 'CONFERIDO • $_score/5' : 'CONFERIR'),
        ),
      ],
    ),
  );
}
