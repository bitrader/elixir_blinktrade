# BlinkTrade 

Unofficial lib of BlinkTrade (https://blinktrade.com) that operate with the following brokers: [SurBitcoin](https://surbitcoin.com), [VBTC](https://vbtc.vn), [FoxBit](https://foxbit.com.br), [Testnet](https://testnet.blinktrade.com/), [UrduBit](https://urdubit.com) and [ChileBit](https://chilebit.net).

### How to use
Currently we implemented only the ticker feature
#### Ticker
```elixir
iex> BlinkTrade.ticker(:brl)
```

There are these parameter options: `:vef`, `:vnd`, `:brl`, `:pkr`, `clp`, each one represents a currency:

| Code | Currency |
|------|----------|
| VEF  | Venezuelan Bolivares (SurBitcoin) |
| VND  | Vietnamise Dongs (VBTC) |
| BRL  | Brazil Reals (FoxBit) |
| PKR  | Pakistani Ruppe (UrduBit) |
| CLP  | Chilean Pesos (ChileBit.NET) |

## License

```
Copyright © 2017 Hotaviano Melo <hotaviano@melo.biz>

This work is free. You can redistribute it and/or modify it under the
terms of the GPL License. See the LICENSE file for more details.
```
