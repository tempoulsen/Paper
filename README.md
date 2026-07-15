# Local Scaling and Temporal Learning in Chart-Based Return Prediction

This repository contains the manuscript and submission files for a finance article targeted to the *Journal of Empirical Finance*.

The paper studies which parts of chart construction account for chart CNN return predictability. Its central result is that local high--low scaling exposes a strong short-horizon ranking and that temporal convolution applied to the same locally scaled numerical sequence reproduces the chart model's portfolio performance. The chart primarily delivers a locally normalized temporal signal. Benchmark strategies, transaction cost, weighting schemes, tradability screens, and the post-2019 sample define the signal's economic scope.

## Terminology and wording source of truth

The final master's thesis, *Beyond the Chart: Representation, Learning, and
Benchmarking in Market-History Return Prediction*, is the source of truth for
the paper's language, keywords, model names, strategy labels, and empirical
terminology. Revisions should preserve the thesis vocabulary unless both
authors deliberately approve a change. Shortening the article does not justify
introducing new labels or technical synonyms that were not used in the thesis.

Use the thesis terminology consistently:

- chart CNN, CNN1D, and multimodal model
- chart construction, chart input, binary grayscale image, pixel layout, and
  sequence representation
- image-scaled sequence, image scale, cumulative-return scale, and
  devolatized-return scale
- momentum (MOM), one-month short-term reversal (STR), one-week short-term
  reversal (WSTR), and the multi-horizon trend strategy (TREND)
- equal-weighted and value-weighted portfolios, baseline sample, extension
  sample, transaction costs, lookback window, and forecast horizon

Use `MOM`, not `CONT`, for the implemented 12-1 momentum benchmark. Do not use
`rasterization` or `coordinate system` as replacements for the thesis's
language about chart construction, rendering, binary images, the pixel layout,
or local scaling. Before introducing or replacing a key term, verify its use in
the final thesis and flag any proposed departure for author review.

The authoritative local PDF on Tobias's machine is:

`/Users/tobiasedwardmailandtpoulsen/Desktop/Universitet/Speciale/Speciale - Beyond the Chart (FINAL) .pdf`

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
