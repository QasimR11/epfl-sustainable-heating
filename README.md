# Modernizing EPFL Heating System: A Sustainable Energy Strategy

## Abstract
This report presents a comprehensive analysis of energy optimization strategies for the EPFL campus, encompassing energy demand analysis, heat recovery, heat pump (HP) modeling, and energy system integration.

The study identifies energy demands across campus buildings, emphasizing critical factors such as thermal conductivity (k<sub>th</sub>) and solar gain coefficients (k<sub>sun</sub>). A detailed analysis suggests that targeted renovations, combined with optimized parameters, can reduce overall heating demand by a significant margin.

Heat recovery systems are analyzed for their ability to reclaim waste heat from campus processes. Preliminary calculations indicate close to 30% reduction in heat load of the campus in selected scenarios, offering substantial opportunities to reduce waste and improve system efficiency.

A two-stage heat pump system, designed to provide up to 6 MW of thermal capacity, is modeled to address heating demands. The proposed system demonstrates a coefficient of performance (COP) exceeding 4 under optimal conditions, underscoring its suitability for large-scale applications like the EPFL campus. This advanced system incorporates a competitive working fluid (R-290), further enhancing its efficiency.

Finally, an integrated energy system is proposed, combining renewable energy sources and advanced control algorithms to optimize campus-wide energy use through Multi-Integer Linear Programming. Projections highlight the potential for significant reductions in energy consumption and greenhouse gas emissions, aligning with EPFL’s sustainability goals.

This integrated approach demonstrates the feasibility of achieving sustainable energy solutions while maintaining high performance and cost efficiency. The findings underscore the critical role of advanced modeling and integration in modern energy systems.

## How to View the Project

This project's output is an HTML book, but it is **not hosted on a live website**. To view the complete project, you will need to download this repository and open the files locally.

Please follow these steps:

1.  **Download the repository:** Click the green "<> Code" button on this GitHub page and select "Download ZIP."
2.  **Unzip the file:** Extract the downloaded ZIP file to a convenient location on your computer.
3.  **Navigate to the 'book' folder:** Inside the unzipped repository, you will find a folder named `book`. This folder contains all the rendered HTML files.
4.  **Open `index.html`:** Double-click on the `index.html` file within the `book` folder. This will open the project's main page in your default web browser, and you can then navigate through its sections.

## Key Features
- **Energy Demand Assessment** - Detailed calculation of campus heating demand. Clustering to identify typical periods.
- **Heat Recovery Analysis** - Evaluation of different heat recovery options using **AMPL**, including a detailed analysis of waste heat reclamation from ventilation air, demonstrating the potential for substantial reductions in campus heat load.
- **Heat Pump Modeling** - Modeling of two-stage heat pump using **VALI**, with working fluid (R-290) selection based on environmental impact and operational costs, where R-290 shows better performance and lower Global Warming Potential (GWP) compared to R-1234yf.
- **Multi-Objective Optimization (MILP)** - MILP to identify optimal combinations of various energy technologies such as **boilers, cogeneration, electric boilers, SOFC, PV panels** for campus-wide energy use, tailored to different budget and environmental priorities.
- **Recommendations for Sustainability** - Provide recommendations, including renovating existing buildings, installing heat recovery with heat pump integration for ventilation air, and specific technology installations based on defined economic or environmental scenarios.

## Project Structure
* `_book`: The output directory where the rendered HTML files are located.
* `_quarto.yml`: Main project configuration.
* `index.qmd`: Project introduction.
* `01.00-Energy_demand.qmd`: Analysis of heating demand and identification of typical periods.
* `02.00-Heat_recovery.qmd`: Heat recovery scenarios using NLP optimization.
* `03.00-HP_modeling.qmd`: Modeling of heat pump.
* `04.00-energy_system_integration.qmd`: MILP formulation to determine optimal combination of technologies for meeting future demands.
* `05.00-Conclusions.qmd`: Final remarks and recommendations.

## Technologies & Tools Used
* Quarto
* Python
* R
* AMPL
* VALI

## Academic Context 

This repository contains a completed project developed as part of an academic course at **École Polytechnique Fédérale de Lausanne**. The primary purpose of this public repository is to showcase the **final rendered output and findings** of the project, hence the underlying code and scripts for AMPL/Python/R used in the project are not included.
