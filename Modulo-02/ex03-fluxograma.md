## Exercício 3 — Fluxograma
flowchart LR

    C{"valor > 100"} -- tem --> E["10% de desconto"]
    C -- nao tem --> F["desconto"]
    A["inicio"] -- se --> C
    E --> n1["o valor com desconto é"]
    F --> n2["o valor sem desconto é"]
    n1 --> n3["fim"]
    n2 --> n3