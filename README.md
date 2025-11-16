# Solar PV Potential Analysis - Sylhet District, Bangladesh

## 📋 Project Overview

This repository contains a comprehensive **Spatio-Temporal Modeling of Solar Photovoltaic Potential** across Sylhet District, Bangladesh, using an integrated GIS-MCDM framework. The analysis identifies optimal deployment zones, quantifies economic viability, and provides actionable insights for sustainable energy planning.

### 🎯 Key Objectives
- High-resolution spatial suitability mapping (200×200 grid)
- Monthly capacity factor analysis accounting for monsoon variability
- Economic assessment (LCOE, NPV, IRR, payback period)
- Energy storage optimization for 80% grid firming
- Environmental impact evaluation (25-year lifecycle)
- Risk assessment for extreme weather events

---

## 📁 Repository Structure

```
solar-pv-analysis/
│
├── data/
│   ├── sample_data/
│   │   ├── meteorological_data.csv
│   │   ├── site_suitability_assessment.csv
│   │   ├── monthly_capacity_factors.csv
│   │   ├── lcoe_economic_analysis.csv
│   │   ├── energy_storage_scenarios.csv
│   │   ├── extreme_weather_events.csv
│   │   ├── waste_recycling_projections.csv
│   │   └── ahp_sensitivity_analysis.csv
│   │
│   └── processed/
│       ├── top_50_sites_gis_ready.csv
│       ├── attribute_field_descriptions.csv
│       └── specialized_analysis_summary.csv
│
├── scripts/
│   ├── untitled10.py                    # Main analysis script (original)
│   ├── solar_pv_separated.py            # Separated figures version
│   └── gis_export_tool.py               # GIS data export utility
│
├── gis_outputs/
│   ├── csv_files/
│   │   ├── GIS_AllSites_Optimized.csv
│   │   ├── GIS_TopSites_Optimized.csv
│   │   ├── GIS_Hotspots_Optimized.csv
│   │   ├── GIS_AllSites_Simple.csv      # Shapefile-compatible
│   │   └── GIS_Field_Definitions.csv
│   │
│   ├── geojson/
│   │   ├── GIS_All_Sites.geojson
│   │   ├── GIS_Top_Priority_Sites.geojson
│   │   ├── GIS_Hotspots.geojson
│   │   ├── GIS_District_Boundary.geojson
│   │   └── GIS_Reference_Locations.geojson
│   │
│   ├── qgis/
│   │   ├── Solar_PV_Sylhet.qgs          # QGIS project file
│   │   ├── GIS_AllSites_Style.qml
│   │   └── GIS_Hotspots_Style.qml
│   │
│   └── metadata/
│       ├── GIS_Metadata.txt
│       └── GIS_Field_Definitions.csv
│
├── outputs/
│   ├── figures/
│   │   ├── solar_pv_complete_analysis.png
│   │   ├── advanced_gis_analysis.png
│   │   ├── regression_analysis.png
│   │   ├── economic_viability_analysis.png
│   │   ├── floating_pv_analysis.png
│   │   ├── integrated_deployment_map.png
│   │   ├── monsoon_risk_assessment.png
│   │   └── storage_grid_analysis.png
│   │
│   ├── reports/
│   │   ├── comprehensive_analysis_report.txt
│   │   ├── analysis_summary_statistics.csv
│   │   ├── monthly_meteorological_summary.csv
│   │   └── economic_analysis_summary.csv
│   │
│   └── paper/
│       ├── solar_pv_ieee_paper.tex
│       ├── solar_pv_ieee_paper.pdf
│       └── references.bib
│
├── docs/
│   ├── METHODOLOGY.md
│   ├── GIS_IMPORT_GUIDE.md
│   ├── FIELD_DICTIONARY.md
│   └── QUICK_START.md
│
├── requirements.txt
├── environment.yml
├── README.md
└── LICENSE
```

---

## 🚀 Quick Start

### Prerequisites

**Python Environment:**
```bash
Python 3.8+
NumPy >= 1.21.0
Pandas >= 1.3.0
Matplotlib >= 3.4.0
Seaborn >= 0.11.0
SciPy >= 1.7.0
Scikit-learn >= 0.24.0
```

**GIS Software (Optional):**
- QGIS 3.22+ (recommended)
- ArcGIS Pro 2.8+
- Google Earth Pro

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/yourusername/solar-pv-sylhet.git
cd solar-pv-sylhet
```

2. **Install Python dependencies:**
```bash
pip install -r requirements.txt
```

Or using conda:
```bash
conda env create -f environment.yml
conda activate solar-pv
```

3. **Verify data files:**
```bash
python scripts/verify_data.py
```

---

## 📊 Running the Analysis

### Complete Analysis (All Figures)

```bash
python scripts/untitled10.py
```

This generates:
- ✅ All 17 visualization subplots
- ✅ Comprehensive analysis report
- ✅ Export CSV files
- ✅ Summary statistics

### Separated Figures (Cell-by-Cell)

For Jupyter notebook users:
```bash
jupyter notebook scripts/solar_pv_separated.ipynb
```

Run each cell individually to generate figures one at a time.

### GIS Data Export

```bash
python scripts/gis_export_tool.py
```

Generates:
- CSV files (WGS84 compatible)
- GeoJSON files
- QGIS project file
- Field definitions
- Metadata documentation

---

## 🗺️ GIS Data Usage

### Quick Import to QGIS

**Method 1: Use Project File**
1. Open QGIS
2. File → Open Project → `Solar_PV_Sylhet.qgs`
3. All layers load automatically ✨

**Method 2: Manual CSV Import**
1. Layer → Add Layer → Add Delimited Text Layer
2. Select: `GIS_AllSites_Optimized.csv`
3. X field: **LON**, Y field: **LAT**
4. CRS: **EPSG:4326** (WGS 84)
5. Click Add

**Method 3: GeoJSON Import**
1. Drag & drop `GIS_All_Sites.geojson` into QGIS
2. Auto-styled and ready! 🎨

### Import to ArcGIS Pro

1. Map → Add Data → XY Point Data
2. Input Table: `GIS_AllSites_Optimized.csv`
3. X Field: **LON**, Y Field: **LAT**
4. Coordinate System: **GCS_WGS_1984**
5. Click OK

### Web Viewing (No Software Required)

1. Visit: https://geojson.io
2. Drag any `.geojson` file from `gis_outputs/geojson/`
3. Explore interactively in browser 🌐

---

## 📈 Key Results Summary

### Spatial Analysis
| Metric | Value |
|--------|-------|
| Total Sites Analyzed | 400 |
| Top 5% Sites Identified | 20 |
| Total Deployment Capacity | 89.2 MW |
| Geographic Clusters | 3 zones |
| Hot Spots (Gi* > 1.96) | 68 sites (17%) |

### Economic Viability
| Deployment Type | LCOE (USD/kWh) | IRR (%) | Payback (years) |
|----------------|----------------|---------|-----------------|
| Rooftop | 0.0853 | 14.8 | 7.4 |
| Floating | 0.0834 | 15.9 | 6.9 |
| Ground-Degraded | 0.0869 | 13.7 | 7.9 |
| **Average** | **0.0852** | **14.8** | **7.4** |

### Performance Metrics
| Season | Capacity Factor | Solar Irradiation (kWh/m²/day) |
|--------|----------------|--------------------------------|
| Winter (Dec-Feb) | 0.165 | 4.82 ± 0.35 |
| Pre-Monsoon (Mar-May) | 0.215 | 5.67 ± 0.42 |
| Monsoon (Jun-Sep) | 0.143 | 4.15 ± 0.58 |
| Post-Monsoon (Oct-Nov) | 0.171 | 4.94 ± 0.31 |
| **Annual Average** | **0.170** | **4.89 ± 0.68** |

### Environmental Impact
| Metric | Value |
|--------|-------|
| Annual CO₂ Offset | 97,265 tonnes |
| 25-Year Cumulative Offset | 2.43 million tonnes |
| Material Recovery Rate | 87.4% |
| Landfill Waste | 227 tonnes (12.6%) |

### Energy Storage
| Technology | Grid Firming | LCOS (USD/kWh) | Recommended |
|-----------|--------------|----------------|-------------|
| Lithium-ion | 78.3% | 0.142 | ✅ (60% mix) |
| VRFB | 82.1% | 0.168 | ✅ (40% mix) |
| Pumped Hydro | 85.6% | 0.095 | Future phase |
| **Hybrid (Li-ion + VRFB)** | **81.4%** | **0.151** | **✅ Optimal** |

---

## 📖 Data Dictionary

### Key Field Names (GIS-Optimized)

| Field Name | Full Name | Type | Description |
|-----------|-----------|------|-------------|
| **SITE_ID** | Site ID | Text | Unique identifier (SYL_0000 to SYL_0399) |
| **LAT** | Latitude | Double | WGS84 decimal degrees (24.6°N - 25.3°N) |
| **LON** | Longitude | Double | WGS84 decimal degrees (91.6°E - 92.3°E) |
| **SUIT_SCORE** | Overall Suitability | Double | 0-100 scale (higher = better) |
| **DEPLOY_TYP** | Deployment Type | Text | Rooftop/Floating/Ground_Degraded |
| **HOTSPOT** | Hotspot Class | Text | Hot Spot/Cold Spot/Not Significant |
| **GRID_ZONE** | Grid Access Zone | Text | High(<2km)/Medium(2-5km)/Low(>5km) |
| **CAP_MW** | Capacity | Double | System capacity in megawatts |
| **LCOE** | LCOE | Double | Levelized cost (USD/kWh) |
| **GEN_MWH** | Annual Generation | Double | Expected annual output (MWh) |
| **CLUSTER** | Cluster ID | Integer | Spatial cluster (1-5) |

📄 **Complete field definitions:** See `gis_outputs/metadata/GIS_Field_Definitions.csv`

---

## 🔬 Methodology Overview

### 1. Data Collection
- **Meteorological:** NASA POWER, PVGIS (2020-2023)
- **Terrain:** SRTM 30m DEM, Sentinel-2 land cover
- **Infrastructure:** OpenStreetMap, BPDB grid data
- **Validation:** Bangladesh Meteorological Department stations

### 2. GIS-MCDM Framework
**Five Criteria (AHP Weighted):**
1. Solar Resource Score (35%)
2. Terrain Suitability (25%)
3. Infrastructure Accessibility (20%)
4. Grid Proximity (12%)
5. Social Impact (8%)

**Consistency Ratio:** 0.087 (< 0.10 ✅)

### 3. Spatial Analysis
- **Interpolation:** 200×200 grid, cubic spline
- **Hotspot Detection:** Getis-Ord Gi* statistic
- **Clustering:** Ward's hierarchical method (5 clusters)

### 4. Temporal Modeling
- Monthly capacity factors with seasonal corrections
- Soiling loss factors: Dry (2-3%), Monsoon (5-10%)
- Temperature effects: ηT = ηSTC[1 - γ(Tcell - 25)]

### 5. Economic Analysis
- LCOE: Standard formula, 8% discount rate, 25-year lifetime
- NPV, IRR, payback period calculations
- Monte Carlo sensitivity (10,000 iterations)

### 6. Storage Optimization
- Target: 80% grid firming capability
- Technologies: Li-ion, VRFB, PHS
- Linear programming for capacity sizing

---

## 📊 Visualization Gallery

### Main Analysis Figures

1. **Complete Analysis Dashboard** (17 subplots)
   - Suitability maps, hotspot analysis
   - Temporal patterns, capacity factors
   - Economic metrics, LCOE distributions
   - Storage requirements, waste projections
   - Sensitivity analysis, clustering

2. **Economic Viability Maps**
   - LCOE spatial distribution
   - Economic viability zones
   - Payback vs IRR scatter
   - Deployment type comparison

3. **Floating PV Analysis**
   - FPV suitability surface
   - Top 50 opportunity sites
   - Water access vs risk profile
   - Capacity potential ranking

4. **Integrated Deployment Strategy**
   - Composite deployment score heatmap
   - Priority deployment zones (labeled)
   - Transmission line overlay
   - Sylhet City reference point

5. **Monsoon Risk Assessment**
   - Flood & cyclone risk surface
   - Site-specific classification
   - Terrain risk factors
   - Elevation vs slope analysis

6. **Storage & Grid Integration**
   - Storage criticality index
   - Grid integration priority map
   - Top 30 storage-priority sites
   - Distance impact analysis

---

## 🎓 Academic Usage

### Citing This Work

**IEEE Format:**
```
J. A. Prity, G. M. S. Iqbal, and J. M. Das, "Spatio-Temporal Modelling 
of Solar Photovoltaic Potential across Sylhet District: A GIS-Based 
Multi-Criteria Approach for Sustainable Energy Planning," in Proc. 
IEEE Int. Conf. Renewable Energy, 2026.
```

**BibTeX:**
```bibtex
@inproceedings{prity2024solar,
  title={Spatio-Temporal Modelling of Solar Photovoltaic Potential across Sylhet District: A GIS-Based Multi-Criteria Approach for Sustainable Energy Planning},
  author={Prity, Jarin Alam and Iqbal, G.M Sifat and Das, Joy Mony},
  booktitle={IEEE International Conference on Renewable Energy},
  year={2026},
  organization={IEEE}
}
```

### Compiling the Paper

```bash
cd outputs/paper/
pdflatex solar_pv_ieee_paper.tex
bibtex solar_pv_ieee_paper
pdflatex solar_pv_ieee_paper.tex
pdflatex solar_pv_ieee_paper.tex
```

Generates publication-ready PDF: `solar_pv_ieee_paper.pdf`

---

## 🛠️ Troubleshooting

### Common Issues

**1. CSV Import: "Could not detect CRS"**
```
Solution: Manually select EPSG:4326 (WGS 84)
```

**2. Python: ModuleNotFoundError**
```bash
pip install --upgrade -r requirements.txt
```

**3. QGIS: Points not appearing**
```
Check: LON/LAT columns selected correctly
Verify: No header rows included as data
```

**4. Figure generation: Memory error**
```python
# Reduce grid resolution in script
grid_res = 100  # Instead of 200
```

**5. GeoJSON not loading in browser**
```
Try: Use Firefox or Chrome (Edge may have issues)
Alternative: Use geojson.io or QGIS
```

### Getting Help

- 📧 Email: jarinprity438@gmail.com
- 🐛 Issues: [GitHub Issues](https://github.com/yourusername/solar-pv-sylhet/issues)
- 💬 Discussions: [GitHub Discussions](https://github.com/yourusername/solar-pv-sylhet/discussions)

---

## 🔄 Updates & Roadmap

### Version History

**v1.0.0** (Current)
- ✅ Complete GIS-MCDM analysis
- ✅ Economic viability assessment
- ✅ Storage optimization
- ✅ Environmental impact evaluation
- ✅ IEEE paper manuscript
- ✅ GIS-ready data exports

### Planned Features

**v1.1.0** (Q1 2025)
- [ ] Real-time weather API integration
- [ ] Machine learning-based generation forecasting
- [ ] Interactive web dashboard (Plotly Dash)
- [ ] Automated report generation

**v2.0.0** (Q2 2025)
- [ ] Expand to all Bangladesh districts
- [ ] Solar-wind hybrid optimization
- [ ] Agrivoltaics potential mapping
- [ ] Climate change scenario projections (RCP 4.5, 8.5)

---

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

**Areas for Contribution:**
- 🐛 Bug fixes and improvements
- 📊 Additional visualization types
- 🧪 Model validation with ground data
- 📖 Documentation enhancements
- 🌍 Framework adaptation for other regions

---

## 📜 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) for details.

**Citation Required:** Academic and commercial use must cite the original authors.


---

## 🙏 Acknowledgments

- Bangladesh Meteorological Department for validation data
- Bangladesh Power Development Board for grid infrastructure data
- NASA POWER and PVGIS teams for satellite data access
- OpenStreetMap contributors for infrastructure mapping
- Metropolitan University for research support

---

## 📚 Additional Resources

### Documentation
- [Methodology Details](docs/METHODOLOGY.md)
- [GIS Import Guide](docs/GIS_IMPORT_GUIDE.md)
- [Field Dictionary](docs/FIELD_DICTIONARY.md)
- [Quick Start Tutorial](docs/QUICK_START.md)

### External Links
- [QGIS Documentation](https://docs.qgis.org)
- [NASA POWER Data](https://power.larc.nasa.gov/)
- [PVGIS Database](https://re.jrc.ec.europa.eu/pvg_tools/en/)
- [Bangladesh Renewable Energy Policy](https://policy.asiapacificenergy.org/node/36)

---

## 📊 Project Statistics

![Python](https://img.shields.io/badge/Python-3.8%2B-blue)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Active-success)
![Coverage](https://img.shields.io/badge/Coverage-400%20Sites-orange)

**Lines of Code:** ~2,500  
**Data Points:** 400 sites × 8 datasets = 3,200 records  
**Analysis Runtime:** ~15 minutes (complete)  
**Output Files:** 25+ (figures, CSVs, GeoJSONs, reports)

---

## 🌟 Star History

If you find this project useful, please consider giving it a ⭐ on GitHub!

---

**Last Updated:** November 17, 2024  
**Version:** 1.0.0  
**Status:** 🟢 Active Development

---
