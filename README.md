# dev-benchmark

Benchmark script to measure performance of development tools.

Motivation: Recently I realized that I own multiple computers. I wanted to know which one can run my web development tools faster and more efficiently. So, I created this simple script to benchmark them by running my regular real-world tools like: CRA, express generator etc. and measure the time.

### How does it work?

- [The run.sh script](./run.sh) will generate a CRA webapp (benchmark1) and an Express-NodeJS app (benchmark2).
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
sh run.sh "Brand Model - OS - CPU - RAM - HDD - Node version"

Tips:
- Run "sh run.sh" twice to get more accurate results. (due to npm caches)
- Close all background apps, remote access apps. Plug in the charger if using a laptop.
```

## Results

- After running the script (run it twice for accurate results), the benchmark results (in seconds) will be added to this README.md file.
- Create a Pull Request to add your results here.

[Results.csv](./results.csv)

## Results - Legacy

### HP 17z-ca300 - Windows 11 WSL2 Ubuntu - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - Intel SSD6 M.2 NVMe - Node 18.17.0

#### CRA

- create
`24.738`
- npm run build
`6.267`
- npm run test
`1.723`

#### express

- create
`6.721`
- npm run build
`2.882`
- npm run test
`3.928`

### HP 17z-ca300 - Windows 10 HyperV Debian - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA

- create
`35.709`
- npm run build
`8.856`
- npm run test
`2.613`

#### express

- create
`14.416`
- npm run build
`3.765`
- npm run test
`4.306`

### HP 17z-ca300 - Windows 10 HyperV Ubuntu - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA

- create
  `36.71`
- npm run build
  `8.71`
- npm run test
  `3.08`

#### express

- create
  `18.55`
- npm run build
  `3.90`
- npm run test
  `4.82`

### HP 17z-ca300 - Windows 10 Docker Debian - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA

- create
`46.551`
- npm run build
`9.056`
- npm run test
`2.302`

#### express

- create
`14.234`
- npm run build
`3.608`
- npm run test
`4.126`

### HP 17z-ca300 - Windows 10 Cygwin - AMD Ryzen 5 4500U - 16 GB DDR4-2666 SDRAM - SSD

#### CRA

- create
`61.548`
- npm run build
`45.456`
- npm run test
`16.485`

#### express

- create
`20.107`
- npm run build
`8.130`
- npm run test
`9.144`

### MacBook Pro (Retina, 13-inch, Early 2015) - MacOS Mojave - 3.1 GHz Intel Core i7 - 16 GB 1867 MHz DDR3 - SSD

#### CRA

- create
  `44.45`
- npm run build
  `15.58`
- npm run test
  `3.45`

#### express

- create
  `15.50`
- npm run build
  `5.49`
- npm run test
  `6.19`

### Linode - Debian 8 - 1 CPU Core - 2 GB RAM

#### CRA

- create
`76.028`
- npm run build
`37.645`
- npm run test
`8.571`

#### express

- create
`21.463`
- npm run build
`12.339`
- npm run test
`12.045`

### GN34 Mini PC - Windows 10 Cygwin - Intel Celeron J3455 - 8GB RAM - 64 GB eMMC

#### CRA

- create
`162.016`
- npm run build
`42.069`
- npm run test
`18.397`

#### express

- create
`44.258`
- npm run build
`16.773`
- npm run test
`17.237`

### ITX PC - Windows 10 Cygwin - Intel Core i3-2100 - 8 GB 1333 MHz - SSD

#### CRA

- create
`61.832`
- npm run build
`21.982`
- npm run test
`6.839`

#### express

- create
`20.799`
- npm run build
`8.498`
- npm run test
`9.261`

### Oracle Cloud Free Instance - Ubuntu 20 - 1v CPU - 1 GB RAM - 50 GB HDD

#### CRA

- create
`74.715`
- npm run build
`39.068`
- npm run test
`8.107`

#### express

- create
`23.202`
- npm run build
`12.654`
- npm run test
`11.308`

### System76 Thelio - Ubuntu - 2 CPUs - 128 GB RAM - 2 TB HDD

#### CRA

- create
`16.416`
- npm run build
`6.145`
- npm run test
`2.088`

#### express

- create
`11.430`
- npm run build
`2.787`
- npm run test
`1.992`

### Macbook Pro M1 16in - Monterey - Apple M1 Pro - 32 GB - 512 GB HDD

#### CRA

- create
`8.599`
- npm run build
`3.466`
- npm run test
`.976`

#### express

- create
`2.919`
- npm run build
`1.665`
- npm run test
`2.750`

### Hetzner - Debian 12 - AMD Ryzen 5 3500X - 4 GB - 80 GB - Node 18.17.1

#### CRA

- create
`24.257`
- npm run build
`9.523`
- npm run test
`3.092`

#### express

- create
`6.700`
- npm run build
`4.467`
- npm run test
`5.186`
