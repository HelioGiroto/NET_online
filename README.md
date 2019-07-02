# NET_online
App que avisa quando a internet voltou a funcionar... 

Chegamos em casa e notamos que o sinal da internet saiu do ar!!! Ufff...... Não tinha previsão de quando ele ia voltar!
Então fizemos um pequeno programinha em Shell Script para que O PRÓPRIO COMPUTADOR ME AVISASSE QUANDO A INTERNET VOLTASSE!

Bom, não foi difícil, e o programa funcionou de maneira perfeita!! (Tanto que publico aqui para quem quiser usá-lo!).

OBS.: Funciona somente em LINUX e MAC. 

Baixe o script nesse [link](https://github.com/HelioGiroto/NET_online/archive/master.zip) e em seguida digite no seu Terminal:

    bash NET_online.sh

* Atenção: Na mesma pasta onde você salvar esse app você tb deve ter um arq mp3 chamado "beep.mp3" - que será qualquer audio mp3 que irá tocar como um despertador bem na hora que volte a Internet.

Esse "Programinha" estará fazendo um teste de conexão a cada 3 segundos para ver se a internet voltou. Por isso, o Wi-Fi do seu computador deve estar ativado (ou o cabo Ethernet conectado devidamente, é claro). Só isso. Quando a internet voltar a musiquinha toca!

Se quiser testar para ver como funciona sem precisar baizá-lo basta digitar essa linha abaixo no seu Terminal:

    curl https://raw.githubusercontent.com/HelioGiroto/NET_online/master/NET_online.sh | bash

Autor: Hélio Giroto

[Sob licença MIT de copyright](https://raw.githubusercontent.com/HelioGiroto/NET_online/master/LICENSE)
