# Local Scaling and Temporal Learning in Chart-Based Return Prediction

This repository contains the manuscript and submission files for a finance article targeted to the *Journal of Empirical Finance*.

The paper studies which parts of chart construction account for chart-CNN return predictability. Its central result is that local high--low scaling exposes a strong short-horizon ranking and that temporal convolution applied to the same locally scaled numerical sequence reproduces the chart model's portfolio performance. The chart primarily delivers a locally normalized temporal signal. Benchmark strategies, transaction cost, weighting schemes, tradability screens, and the post-2019 sample define the signal's economic scope.

## Repository structure

- `manuscript/` contains the editable LaTeX source.
  - `main.tex` builds the author manuscript.
  - `main_anonymous.tex` builds the double-anonymized manuscript.
  - `online_appendix.tex` builds the author online appendix.
  - `online_appendix_anonymous.tex` builds the anonymized online appendix.
  - `title_page.tex` builds the separate title page.
- `submission/` contains the compiled submission PDFs and editable highlights.

## Submission files

- `submission/manuscript.pdf`
- `submission/manuscript_anonymous.pdf`
- `submission/online_appendix.pdf`
- `submission/online_appendix_anonymous.pdf`
- `submission/title_page.pdf`
- `submission/highlights.txt`

The anonymous manuscript and appendix omit author names, affiliations, email addresses, acknowledgements, and PDF author metadata.

## Building

Run the submission build from the repository root:

```sh
./build_submission.sh
```

The script compiles all five LaTeX targets sequentially and refreshes the PDFs in `submission/`. The article uses editable tables and contains no heatmaps. Research data and private editorial source materials are intentionally excluded from the repository.
