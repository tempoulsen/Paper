# Paper

This repository is the working home for turning our thesis project into a publishable finance paper.

The immediate target journal is the Journal of Empirical Finance. The paper should be concise, self-contained, and organized around one mechanism. The strongest version of the paper explains why chart-based return predictability appears to work and where its economic value survives.

## Source Material Read

Reference files from Jesper are stored in `source_materials/jesper/`.

- `Jesper Mail.pdf`
- `Guide for authors - Journal of Empirical Finance - ISSN 0927-5398 | ScienceDirect.com by Elsevier.pdf`
- `Paper-eksempel.pdf`

These files document the submission guidance, journal requirements, and example article used when shaping the manuscript.

## Core Paper Claim

The main paper should focus on the local high-low scaling channel.

Our results indicate that much of the chart-CNN advantage is carried by local high-low scaling combined with temporal learning. The chart image works largely as a delivery format for normalized recent price history. A 1D sequence CNN applied to the same locally scaled window recovers most of the chart-CNN edge, and the multimodal model adds limited gains when the two encodings overlap.

The paper should make this mechanism the center of the contribution. The benchmark battery, transaction costs, multimodal fusion, liquidity results, and post-2020 decay should support that mechanism.

## Positioning

Journal of Empirical Finance is an ambitious but plausible outlet for this project. The fit comes from empirical asset pricing, machine learning, portfolio implementation, and the focus on economic value under realistic trading rules.

The paper should read as an independent study. Jiang, Kelly, and Xiu are important background because their chart-CNN result is prominent, but the manuscript should quickly move from that motivation to our own controlled representation test.

The manuscript should position itself against two nearby literatures.

- Chart-based machine learning in asset pricing.
- Machine learning return prediction evaluated through portfolio rules, transaction costs, and implementability.

Jesper's strategic advice is to lead with the mechanism. Kaczmarek and Pukthuanthong style evidence on decay is a supporting result because it helps define the limits of the signal. The paper should explain what the signal was in the first place.

## Contribution

The paper should make three contributions.

1. It decomposes chart-CNN predictability into representation layout, local scaling, and temporal learning.
2. It provides an interpretability design for machine learning in asset pricing by holding the investment protocol fixed while varying the representation of the same price history.
3. It evaluates the economic limits of the learned signal under strong price-based benchmarks, transaction costs, liquidity filters, and recent out-of-sample performance.

## Empirical Logic

The learned model comparison should include the chart-based CNN, the 1D temporal CNN, and the multimodal model.

The key empirical question is what each representation extracts from the same underlying price history. Similar performance across 2D and 1D models shows that representation alone does not settle the mechanism. The multimodal model tests complementarity. Large multimodal gains would suggest distinct information across branches. Limited gains support the interpretation that the two branches extract overlapping information.

Benchmark strategies remain central. The paper should compare learned models with strong transparent price-based strategies under common ranking, weighting, rebalancing, and cost assumptions.

## Suggested Main-Text Shape

The JEF example article is about 17,000 words before references and around 18,600 words with references. That is a reasonable upper target. The main text should be lean, with most robustness tables and implementation details moved to an online appendix.

A likely structure is:

1. Introduction
2. Related literature and contribution
3. Data and representation design
4. Models and portfolio protocol
5. Main representation results
6. Mechanism and complementarity
7. Benchmarks, costs, liquidity, and recent performance
8. Conclusion

The main text should contain one clean primary result grid. The online appendix can carry the larger benchmark battery, extra transaction cost tables, alternative filters, model details, and supporting diagnostics.

## Figures And Tables To Prioritize

- Representation pipeline showing the same price window as chart image, 1D sequence, and combined branches.
- Main performance grid comparing chart CNN, 1D CNN, multimodal model, and strong benchmarks.
- Decomposition or ablation figure for local high-low scaling.
- Complementarity figure or table showing multimodal gains.
- Implementation limits table covering transaction cost, tradability filters, and post-2020 performance.
- Optional appendix table mapping all benchmark strategies to common portfolio rules.

Use `\FloatBarrier` after section-critical figures when figure drift would weaken the argument.

## JEF Submission Notes

Journal of Empirical Finance uses double anonymized review. The title page and anonymized manuscript should be separate files.

First submission follows Elsevier's "Your Paper Your Way" approach, so formatting is flexible at initial submission. The article still needs to be concise, well organized, and readable.

Important requirements from the author guide:

- Abstract maximum is 250 words.
- Use 1 to 7 keywords.
- Submit 3 to 5 highlights as a separate editable file, each at most 85 characters including spaces.
- Submit editable source files. LaTeX is acceptable.
- Tables should be editable text.
- Figures should be supplied as separate files for submission and cited in the text.
- References can use any consistent style at submission.
- Include a data availability statement or explain why data cannot be shared.
- Declare generative AI use if AI tools are used in manuscript preparation beyond basic spelling, grammar, or reference checking.
- A submission fee of USD 175 applies for regular submissions.

## Style Rules For This Paper

Write in a finished paper voice.

- Use `we` for our choices, goals, evidence, and contributions.
- Keep claims direct and simple.
- Avoid framing the paper as a replication.
- Keep Jiang as background, then return quickly to our design.
- Cut unnecessary self-justification.
- Keep the literature review short and targeted.
- Avoid em dashes.
- Avoid contrastive formulas that define the paper by rejecting another framing.
- Write `transaction cost` unless a technical distinction requires another term.

## Working Boundaries

The current Overleaf writing layer is in:

- `/Users/tobiasedwardmailandtpoulsen/Documents/New project`

Useful local research and plotting copies include:

- `/Users/tobiasedwardmailandtpoulsen/LocalWork/Speciale`
- `/Users/tobiasedwardmailandtpoulsen/LocalWork/Plot-Results`
- `/Users/tobiasedwardmailandtpoulsen/LocalWork/Speciale-Overleaf/graphics/Graphs`

When importing material into this repo, preserve the original Overleaf files until the paper skeleton is settled. Core section moves should be treated as editorial decisions.

## Next Work

1. Create a paper skeleton from the current Overleaf project.
2. Rewrite the introduction around local scaling and temporal learning.
3. Build a short JEF recent-issues citation scan from the last two years.
4. Choose the main result grid and move secondary tables to an online appendix.
5. Verify which plots already exist and which need regeneration.
6. Draft JEF highlights, keywords, data statement, and AI-use statement.
7. Decide author order and corresponding author before submission files are prepared.
