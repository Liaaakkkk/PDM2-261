Listas de Exercícios – Variáveis na Linguagem Dart
Parte 1 — Lista de Questões Teóricas (Perguntas Abertas)
1. Explique o que é uma variável na linguagem Dart e qual é sua função em um programa.

É um contêiner ou um espaço reservado na memória física/virtual do computador, utilizado para armazenar, referenciar e manipular dados durante a execução de um programa

2. Em Dart, o que significa dizer que uma variável armazena uma referência a um objeto?

Significa que a variável não guarda o objeto em si, mas sim o endereço (referência) de onde o objeto está na memória. Ou seja, ela aponta para o objeto em vez de conter os dados diretamente.

3. Qual é a diferença entre declarar uma variável usando &#39;var&#39; e declarar explicitamente o
tipo da variável (por exemplo, &#39;String name&#39;)?



4. Explique como funciona a inferência de tipos quando uma variável é declarada com &#39;var&#39;.
5. Em quais situações pode ser útil declarar uma variável usando o tipo &#39;Object&#39; ou
&#39;dynamic&#39;?
6. Explique o conceito de null safety na linguagem Dart e qual problema ele busca evitar.
7. Qual a diferença entre um tipo nullable (String?) e um tipo non-nullable (String)?
8. O que acontece se uma variável non-nullable for utilizada antes de ser inicializada?
9. Descreva o comportamento padrão de variáveis nullable não inicializadas em Dart.
10. Explique por que a linguagem exige que variáveis non-nullable sejam inicializadas antes
de seu uso.
11. Explique o propósito do modificador &#39;late&#39; em Dart.
12. Em quais situações o uso de &#39;late&#39; pode ser necessário em variáveis de classe ou top-
level?
13. Qual é a diferença entre uma variável &#39;late&#39; inicializada na declaração e uma &#39;late&#39;
inicializada posteriormente?
14. O que acontece em tempo de execução se uma variável &#39;late&#39; for utilizada antes de
receber um valor?
15. Explique a diferença conceitual entre variáveis declaradas com &#39;final&#39; e &#39;const&#39;.
16. Por que uma variável &#39;const&#39; deve ser inicializada com um valor conhecido em tempo de
compilação?
17. Uma variável &#39;final&#39; pode ter seu valor alterado após a inicialização? Justifique.
18. Explique a diferença entre imutabilidade da referência e imutabilidade do objeto ao usar
&#39;final&#39;.

19. O que são wildcard variables (_) em Dart e em quais contextos elas podem ser
utilizadas?
20. Discuta boas práticas recomendadas para declaração de variáveis locais em Dart,
especialmente o uso de &#39;var&#39; e &#39;final&#39;.
Parte 2 — Exercícios Práticos de Programação em Dart
1. Crie um programa que declare uma variável &#39;nome&#39; do tipo String e atribua seu nome a
ela. Em seguida, imprima o valor no console.
2. Declare uma variável &#39;idade&#39; usando &#39;var&#39;, atribua um número inteiro e imprima a idade.
3. Declare três variáveis com tipos explícitos: String cidade, int ano e double temperatura.
Atribua valores e imprima todos.
4. Declare duas variáveis inteiras &#39;a&#39; e &#39;b&#39;. Calcule e imprima soma, subtração, multiplicação
e divisão.
5. Crie uma variável &#39;String? apelido&#39;. Imprima o valor dela antes e depois de atribuir um
apelido.
6. Crie uma variável &#39;int? numero&#39;. Se ela for null, imprima &#39;Número não definido&#39;.
7. Declare &#39;String? nome&#39; e imprima usando um valor padrão &#39;Usuário&#39; caso seja null.
8. Crie uma variável &#39;String? email&#39;, atribua um valor e use o operador &#39;!&#39; para imprimir o
email.
9. Crie uma variável &#39;final pais&#39; e atribua &#39;Brasil&#39;. Imprima o valor.
10. Declare duas variáveis inteiras e use &#39;final&#39; para armazenar o resultado da soma delas.
11. Declare uma variável &#39;final&#39; e tente alterá-la depois. Observe e descreva o erro gerado.
12. Declare &#39;const double PI = 3.14159&#39; e imprima seu valor.
13. Utilize PI para calcular a área de um círculo com raio 5.
14. Crie uma lista constante contendo três linguagens de programação e imprima cada uma.
15. Declare &#39;late String mensagem&#39;, atribua o valor depois e imprima.
16. Crie uma função que inicialize uma variável &#39;late int resultado&#39; com o quadrado de um
número.
17. Crie variáveis para armazenar nome, idade, altura e estudante (true/false) e imprima
uma frase com essas informações.
18. Crie uma variável String contendo &#39;25&#39; e converta para int.

19. Crie um programa que calcule o preço final de um produto considerando preço inicial,
desconto e imposto. Use &#39;final&#39; para armazenar o resultado.
20. Crie um programa que utilize &#39;var&#39;, &#39;final&#39;, &#39;const&#39; e uma variável nullable para montar e
imprimir um perfil de usuário no console.