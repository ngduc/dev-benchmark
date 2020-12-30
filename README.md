# dev-benchmark

Benchmark script to measure performance of usual development tools.

Create a Pull Request to add result of your computer by cloning and running [the script](./run.sh).

Node JS v15+

```
git clone https://ngduc@github.com/ngduc/dev-benchmark.git
cd dev-benchmark
chmod +x run.sh
sh run.sh
```

## Results

- After running the script, the benchmark results (in seconds) will be added to this README.md file.
- Create a Pull Request to add your results here.

### HP 17z-ca300 - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA
- create
36.714565998
- build
8.711470157
- run tests
3.077614410

#### express
- create
18.555639702
- build
3.907113292
- run tests
4.815195622
