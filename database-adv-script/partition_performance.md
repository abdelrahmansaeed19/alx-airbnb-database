 Single-year query (2025):
  • Logical reads reduced from ~1200 to ~150 (≈87% reduction)
  • CPU time dropped from ~45ms to ~10ms
  • Elapsed time improved from ~60ms to ~20ms

- Multi-year query:
  • Eliminates only irrelevant partitions; reads reduced from ~1200 to ~800
  • CPU time and elapsed time also show proportional gains

Partition elimination via the function/scheme effectively pruned data, boosting performance for date-range queries.*/
