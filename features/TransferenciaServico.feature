# language: pt
Funcionalidade: Transferência valores entre contas validar a transferência de valores entre contas

    cenário: Transferir valores entre contas
        Dada conta "<origem>" com saldo <saldoOrigem> e a conta "<destino>" com saldo <saldoDestino>
        Quando a conta "<origem>" transferir <valor> para a conta "<destino>"
        Então o saldo da conta "<origem>" deve ser <resultadoOrigem> e a conta "<destino>" <resultadoDestino>

    Exemplos:
        | origem    | destino   | valor   | saldoOrigem | saldoDestino  | resultadoOrigem   | resultadoDestino  |
        | 123456    | 654321    | 100.0   | 5000.0      | 5000.0        | 4900.0            | 5100.0            |
        | 987654    | 321654    | 1000.0  | 2000.0      | 100.0         | 1000.0            | 1100.0            |
        | 987654    | 321654    | 2500.0  | 20000.0     | 0.0           | 17500.0   

    