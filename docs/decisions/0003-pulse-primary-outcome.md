# 0003 — Pulse Primary Outcome: Cross-Exchange Crypto Arbitrage Detection

## Status
Accepted

## Context


Pulse is a intelligent platform used to provide arbitrage signal across difference crypto currencies. The platform process real time crypto trade events across different exchanges and find out the alpha in near real time.  This involves doing comparision across multi-exchanges across thousands of real time events and build materialized view dashboard.

## Decision
Pulse detects cross-exchange arbitrage opportunities in real-time
across multiple crypto exchanges.

## Why this outcome stresses the platform
- **High volume:** Crypto trades are huge in volume.  Binance aloen executes excess of 1M orders per minutes, ingesting trades across different exchanges increases the volume of transactions exponentially
- **Low latency:** Trades are generally involves high frequency sessions, so opportunities get expired in few seconds. 
- **Windowed aggregation:** set of transactions aggregation needed in order to find the price variations across few millisecond intervals
- **Materialized view:** The final arbitrage opportunites are displayed using consolidated dashboards which has real time view of underlying trades
- **Event correlation:** Each particular event/transaction has to be compared across different exchanges, for mapping and comparisons it needs to have a correlation locator and do cross comparison

## 30 seconds demo
Dashboard showing live order books from 3 exchanges side-by-side, with an alerts feed on the right firing when arbitrage opportunities, each alert clickable to show the underlying trade events that triggered it


## Why streaming, not batch
The dashboard view and trade details has to be available in few milliseconds and continusly updated.  Batch processing will introduce few latencies

## Patterns used (from framework)
- Pattern 1: Windowed aggregation
- Pattern 2: Anomaly/threshold detection
- Pattern 3: Event correlation
- Pattern 5: Materialized views

## What we are NOT building
This platform is not for real time trading which involves real money or shouldn't be used as investment guide or material.  This is only proof-of-concept