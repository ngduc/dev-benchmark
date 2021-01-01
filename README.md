# dev-benchmark

Benchmark script to measure performance of development tools.

Motivation: Recently I realized that I own multiple computers. I wanted to know which one can run my web development tools faster and more efficiently. So, I created this simple script to benchmark them by running my regular real-world tools like: CRA, express generator etc. and measure the time.

### How does it work?

- [The run.sh script](./run.sh) will generate a CRA webapp (benchmark1) and an Express NodeJS app (benchmark2).
- Then it will run usual npm commands like: npm run build, npm run test and measure the time (in seconds).
- Results will be added to this README.md file. (run git status to see the changes)

Create a Pull Request to add results of your computer performance.

### Usage

- Node JS v15+
- Tested with Ubuntu, Debian, MacOS, Windows (with Cygwin).

```
- Clone and Run:
git clone https://github.com/ngduc/dev-benchmark.git
cd dev-benchmark
sh run.sh "Brand Model - OS - CPU - RAM - HDD"

- Run "sh run.sh" twice to get more accurate results. (due to caching)
- Plug in the charger if using a laptop.
```

## Results

- After running the script (run it twice for accurate results), the benchmark results (in seconds) will be added to this README.md file.
- Create a Pull Request to add your results here.

### HP 17z-ca300 - Windows 10 HyperV Ubuntu - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA

- create
  36.71
- npm run build
  8.71
- npm run test
  3.08

#### express

- create
  18.55
- npm run build
  3.90
- npm run test
  4.82

### HP 17z-ca300 - Windows 10 Docker Debian - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA

- create
46.551
- npm run build
9.056
- npm run test
2.302

#### express

- create
14.234
- npm run build
3.608
- npm run test
4.126

### HP 17z-ca300 - Windows 10 Cygwin - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA

- create
61.548
- npm run build
45.456
- npm run test
16.485

#### express

- create
20.107
- npm run build
8.130
- npm run test
9.144

### MacBook Pro (Retina, 13-inch, Early 2015) - MacOS Mojave - 3.1 GHz Intel Core i7 - 16 GB 1867 MHz DDR3 - SSD

#### CRA

- create
  44.45
- npm run build
  15.58
- npm run test
  3.45

#### express

- create
  15.50
- npm run build
  5.49
- npm run test
  6.19

### Linode - Debian 8 - 1 CPU Core - 2 GB RAM

#### CRA

- create
76.028
- npm run build
37.645
- npm run test
8.571

#### express

- create
21.463
- npm run build
12.339
- npm run test
12.045

