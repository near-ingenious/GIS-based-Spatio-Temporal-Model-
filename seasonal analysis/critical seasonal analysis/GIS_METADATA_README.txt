
GIS DATA PACKAGE - SYLHET SOLAR PV POTENTIAL ANALYSIS
═══════════════════════════════════════════════════════════

FILES:
• sylhet_solar_pv_master.shp - Complete dataset (all attributes)
• monsoon_risk_sites.shp - Risk classification and flood scores
• floating_pv_sites.shp - Water proximity and FPV suitability
• storage_priority_sites.shp - Grid integration and storage needs
• economic_viability_sites.shp - LCOE, IRR, and financial metrics
• integrated_deployment_sites.shp - Composite deployment scores
• *.tif - Raster surfaces (risk, LCOE, suitability)
• *.html - Interactive web maps
• *.csv - Tabular data for statistical analysis

COORDINATE SYSTEM: WGS84 (EPSG:4326)
SPATIAL EXTENT: Lon 91.6°E to 92.3°E
                Lat 24.6°N to 25.3°N
SITES ANALYZED: 400

KEY ATTRIBUTES:
• Economic: LCOE_USD_per_kWh, IRR_percent, Payback_Period_years
• Risk: Monsoon_Risk_Zone, Flood_Risk_Score, Cyclone_Exposure
• Technical: Floating_PV_Suitability, Storage_Criticality_Score
• Infrastructure: Distance_to_Grid_km, Grid_Capacity_MW
• Composite: Composite_Deployment_Score, Economic_Viability_Index

DEPLOYMENT ZONES:
Top 10 zones (Composite_Deployment_Score > 0.75) recommended for immediate development
Average LCOE: $0.0786/kWh
Average Risk: 0.158

USAGE INSTRUCTIONS:
1. Load master file in QGIS/ArcGIS
2. Apply graduated symbology to Composite_Deployment_Score
3. Use layer blending for composite analysis
4. Export layouts for reports
5. Share GeoJSON for web applications

Generated: 2025-11-16 12:50:23
