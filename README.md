# Local Scaling and Temporal Learning in Chart-Based Return Prediction

This repository contains the manuscript and submission files for a finance article targeted to the *Journal of Empirical Finance*.

The paper studies which parts of chart construction account for chart CNN return predictability. Its central result is that local high--low scaling exposes a strong short-horizon ranking and that temporal convolution applied to the same locally scaled numerical sequence reproduces the chart model's portfolio performance. The chart primarily delivers a locally normalized temporal signal. Benchmark strategies, transaction cost, weighting schemes, tradability screens, and the post-2019 sample define the signal's economic scope.

## Editorial direction from Jesper

Jesper Wulff's email of June 22, 2026 provides the editorial direction for the
article. Apply these points throughout drafting and revision:

- Target the *Journal of Empirical Finance*. Review its recent issues, cite
  directly relevant articles from the journal, and use the paper in
  `Fra Jesper/Paper-eksempel.pdf` as a structural reference. The manuscript
  should be concise and well organized.
- Lead with the mechanism. The central contribution is a controlled
  representation test that separates the effects of image layout, local
  high--low scaling, and temporal learning in chart CNN predictability.
- Hold the input window, forecast horizon, stock ranking, portfolio weighting,
  and transaction-cost treatment fixed when comparing representations. This
  design supports an interpretability contribution to machine learning in
  asset pricing.
- Present local high--low scaling and temporal learning as the main empirical
  result. CNN1D recovers most of the chart CNN advantage from the same locally
  scaled window, which identifies chart construction as a delivery mechanism
  for a locally normalized temporal signal.
- Frame Jiang, Kelly, and Xiu as the high-profile result whose mechanism the
  paper explains. Frame Kaczmarek and Pukthuanthong's decay evidence as a
  boundary that supports the economic interpretation. The paper should stand
  as an independent mechanism study instead of a replication or extension.
- Use three supporting bodies of evidence. Limited multimodal gains test
  complementarity between representations. Transparent price-based benchmarks
  discipline claims about a distinct learned anomaly. Transaction costs,
  tradability screens, and the 2020--2024 sample establish the economic and
  implementation boundaries of the signal.
- Keep the literature review lean. Report one clean main result grid in the
  article. Move the full benchmark battery, most supplementary tables, and
  pedagogical implementation detail to the online appendix. The attached JEF
  example is roughly 17,000 words before references and provides a broad length
  reference rather than a formal limit.

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

Use `model`, `classifier`, `network`, `model architecture`, or the specific
model name instead of using `learner` or `learners` as general technical labels.

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
- `Fra Jesper/` contains Jesper's email, the JEF author guide, and the article
  supplied as a writing and structure reference.

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

The script compiles all five LaTeX targets sequentially and refreshes the PDFs in `submission/`. The article uses editable tables and contains no heatmaps. Research data are intentionally excluded from the repository.
