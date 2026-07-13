# Cillo et al. 2020 — HNSCC immune landscape (re-analysis)

Re-analysis of the publicly available single-cell dataset from:

> **Cillo AR, Kürten CHL, Tabib T, et al. Immune Landscape of Viral- and Carcinogen-Driven Head and Neck Cancer.**  
> *Immunity* 2020. https://doi.org/10.1016/j.immuni.2019.11.014  
> Data: GEO: GSE139324

## Dataset at a glance
- **System:** Human head & neck squamous cell carcinoma (HNSCC) and healthy-donor CD45+ immune cells
- **Assay:** 10x Genomics scRNA-seq
- **Accession / source:** GEO: GSE139324

## What this repository does
Preprocesses the Cillo et al. CD45+ immune-cell dataset into a clean, annotated Seurat object (QC, normalisation, clustering, cell-type annotation) as a foundation for downstream NK / T-cell analyses. See `scripts/01_Cillo_Immunity_HNSCC_PreProcessing.Rmd`.

## Repository structure
- `scripts/` — analysis pipeline (numbered `.Rmd` scripts run in order)
- `Setup.R` / `Load_packages.R` — environment setup and package loading
- Large data objects are **not** tracked in Git — download from the source above.

---
Part of my NK / T-cell single-cell research programme — see my [GitHub profile](https://github.com/Eomesodermin) and [dilloncorvino.com](https://dilloncorvino.com).  
Author: **Dillon Corvino**

## Environment

Built in **R** with a Seurat-based single-cell stack — key packages: `Seurat`, `SeuratDisk`, `scCustomize`, `dplyr`, `ggplot2`, `Nebulosa`, `SeuratWrappers`, plus my helper package [`r-utility-functions`](https://github.com/Eomesodermin/r-utility-functions).

No pinned `renv.lock` is committed; the packages listed above are the required dependencies.
