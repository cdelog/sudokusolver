<a id="readme-top"></a>

<!-- Structure adapted from othneildrew/Best-README-Template, credited in Acknowledgments. -->

[![MATLAB][matlab-shield]][matlab-url]
[![Last commit][commit-shield]][commit-url]
[![License][license-shield]](#license)

<br />
<div align="center">
  <h3 align="center">sudokusolver</h3>

  <p align="center">
    A MATLAB solver for Sudoku puzzles that fills in every cell with only one possible digit until the grid is full.
    <br />
    <br />
    <a href="https://github.com/cdelog/sudokusolver/issues/new?labels=bug">Report a bug</a>
    &middot;
    <a href="https://github.com/cdelog/sudokusolver/issues/new?labels=enhancement">Request a feature</a>
  </p>
</div>

<details>
  <summary>Table of contents</summary>
  <ol>
    <li><a href="#about-the-project">About the project</a>
      <ul>
        <li><a href="#limits">Limits</a></li>
        <li><a href="#built-with">Built with</a></li>
      </ul>
    </li>
    <li><a href="#getting-started">Getting started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#repository-layout">Repository layout</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About the project

I wrote this solver in May 2019, and added the comments and this README in October 2019. It solves a puzzle the way most people start one by hand.

Each pass looks at every empty cell and works out which digits from 1 to 9 aren't already in its row, its column or its 3x3 box. The candidates live in a 9x9x9 array, one 9x9 layer per digit, with a 1 wherever that digit is allowed. Every cell left with exactly one candidate gets that digit, and the next pass starts from the updated grid. The loop ends when all 81 cells are filled.

The puzzle that ships in `main.m` fills in after 10 passes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Limits

The solver knows one rule, the single candidate. A puzzle that needs any other technique reaches a pass where no cell has exactly one candidate. The loop in `main.m` has no check for that, so it keeps running without making progress. Stop it with Ctrl+C.

### Built with

- MATLAB, with no toolboxes. The repository doesn't record which MATLAB release I used.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting started

### Prerequisites

- MathWorks MATLAB.

### Installation

1. Download the repository, either with Code > Download ZIP on GitHub or by cloning it.
   ```sh
   git clone https://github.com/cdelog/sudokusolver.git
   ```
2. Open the folder in MATLAB, so it is the current folder.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

1. Put your puzzle in `starting_matrix` at the top of `main.m`, one row per line. Use `0` for an empty cell.
   ```matlab
   starting_matrix = [...
       0 0 9 2 0 0 7 0 0
       0 0 0 0 0 0 0 6 0
       0 6 5 9 1 3 8 0 2
       6 0 7 0 0 0 0 3 5
       0 2 4 7 3 0 0 1 0
       0 0 0 6 5 0 0 9 0
       0 7 0 0 0 0 0 0 6
       0 5 0 8 6 0 0 0 0
       1 8 0 0 9 0 3 7 0
       ];
   ```
2. Run the script.
   ```matlab
   >> main
   ```
3. Read the answer. MATLAB prints `current_matrix` after every pass, so the last grid printed is the solution, and it stays in the `current_matrix` variable. Each pass also prints a `result = n` line for every cell it fills.

For the puzzle above, the last grid is:

```
3 4 9 2 8 6 7 5 1
2 1 8 4 7 5 9 6 3
7 6 5 9 1 3 8 4 2
6 9 7 1 2 8 4 3 5
5 2 4 7 3 9 6 1 8
8 3 1 6 5 4 2 9 7
9 7 2 3 4 1 5 8 6
4 5 3 8 6 7 1 2 9
1 8 6 5 9 2 3 7 4
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Repository layout

| File                               | What it does                                                               |
| ---------------------------------- | -------------------------------------------------------------------------- |
| `main.m`                           | Holds the puzzle and runs the solve loop                                    |
| `refresh_matrix_array.m`           | Rebuilds the 9x9x9 candidate array from the current grid                    |
| `isallowed.m`                      | True if a digit can go in an empty cell                                     |
| `inrow.m`, `incol.m`, `insquare.m` | Check whether a digit is already in a row, a column or a 3x3 box            |
| `getnewvalues.m`                   | Returns a grid with the digits found this pass and zeros everywhere else    |
| `issinglevalue.m`                  | Returns the digit if a cell has exactly one candidate, otherwise 0         |
| `test.m`                           | A scratch file. The solver doesn't use it                                   |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

Finished in 2019. Nothing else is planned.

- [x] Single-candidate solver
- [x] Comments in `main.m` and `refresh_matrix_array.m`
- [x] README

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository.
2. Create a branch (`git checkout -b my-change`).
3. Commit your change and push the branch.
4. Open a pull request.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

[MIT](https://choosealicense.com/licenses/mit/), as this README has said since 2019. The repository doesn't have a `LICENSE` file yet, so GitHub doesn't show the license on the repository page.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

Christopher Deloglos - [@cdelog](https://github.com/cdelog)

Project link: [https://github.com/cdelog/sudokusolver](https://github.com/cdelog/sudokusolver)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

- [Best-README-Template](https://github.com/othneildrew/Best-README-Template) by othneildrew, for this README's structure.
- [Shields.io](https://shields.io) for the badges.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[matlab-shield]: https://img.shields.io/badge/MATLAB-0076A8?style=for-the-badge
[matlab-url]: https://www.mathworks.com/products/matlab.html
[commit-shield]: https://img.shields.io/github/last-commit/cdelog/sudokusolver?style=for-the-badge
[commit-url]: https://github.com/cdelog/sudokusolver/commits/master
[license-shield]: https://img.shields.io/badge/license-MIT-green?style=for-the-badge
