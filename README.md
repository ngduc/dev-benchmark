# dev-benchmark

Benchmark script to measure performance of usual development tools.

How does it work?

- [The run.sh script](./run.sh) will generate a CRA webapp (benchmark1) and an Express NodeJS app (benchmark2).
- Then it will run usual npm commands like: npm run build, npm run test and measure the time (in seconds).
- Results will be added to this README.md file. (run git status to see the changes)

Create a Pull Request to add results of your computer performance.

### Usage

- Node JS v15+
- Tested with Ubuntu, MacOS.

```
- Clone and Run:
git clone https://ngduc@github.com/ngduc/dev-benchmark.git
cd dev-benchmark
chmod +x run.sh
sh run.sh

- Run "sh run.sh" twice to get more accurate results. (due to caching)
```

## Results

- After running the script, the benchmark results (in seconds) will be added to this README.md file.
- Create a Pull Request to add your results here.

### HP 17z-ca300 - Ubuntu - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA

- create
  36.71
- build
  8.71
- run tests
  3.08

#### express

- create
  18.55
- build
  3.90
- run tests
  4.82

### MacBook Pro (Retina, 13-inch, Early 2015) - MacOS Mojave - 3.1 GHz Intel Core i7 - 16 GB 1867 MHz DDR3 - SSD

#### CRA

- create
  44.45
- build
  15.58
- run tests
  3.45

#### express

- create
  15.50
- build
  5.49
- run tests
  6.19

### Linode - Debian 8 - 1 CPU Core - 2 GB RAM

#### CRA

- create
76.028
- build
37.645
- run tests
8.571

#### express

- create
21.463
- build
12.339
- run tests
12.045
