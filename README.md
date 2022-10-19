# DigitalSystems-EX1

### Item 1.1 - Modele por MdED e por ASMChart um sistema digital com 4 entradas (EntA e EntB de 8 bits, OpCode de 2 bits e Reset de 1 bit) e uma saida (SaiR de 8 bits) que:

- Ao ser ligado e/ou ao receber Reset = 1 vá para um estado EIn, fazendo SaiR = 0, que permaneça em EIn se Reset = 1 e que vá para ELoad se Reset = 0.
- Estando em Eload, armazene EntA, EntB e OpCode para em seguida ir para EDecodeOpCode.
- Estando em EDecodeOpCode, se:
    - OpCode = 00, vá para EAnd fazendo SaiR = EntA .and. EntB
    - OpCode = 01, vá para ESoma fazendo SaiR = EntA + EntB
    - OpCode = 10 e EntA > = EntB, vá para ESubAB fazendo SaiR = EntA – EntB
    - OpCode = 10 e EntA < EntB, vá para ESubBA fazendo SaiR = EntB – EntA
    - OpCode = 11 vá para EXor fazendo SaiR = EntA .xor. Ent
- Estando em EAnd, ESoma, ESubAB, ESubBA ou EXor volte para ELoad


### Item 1.2 - Modele por diagrama de blocos, a nível de RTL Design, um Datapath, associado a uma MdE, que possa executar a MdED desenvolvida no Item 1.1.

### Item 1.3 – Descreva em VHDL os blocos construtivos do Datapath proposto no Item 1.2.

### Item 1.4 – Descreva em VHDL a MdE proposta no Item 1.2
