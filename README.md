# 🏎️ Developing Data Products Course Project: MTCars Analytics Dashboard & Pitch
### An Interactive Regression Analysis Tool & Data Pitch
This repository is for the course project of developing data products course offered by Johns Hopkins University Data Science Coursera. 
[![Shinyapps.io](https://img.shields.io)](https://hayelom.shinyapps.io/shiny_pitch_project_submitted/)
[![RPubs](https://img.shields.io)](PASTE_YOUR_RPUBS_URL_HERE)
[![License: MIT](https://img.shields.io)](https://opensource.org)

## 🌐 Project Links
- **Interactive Dashboard**: [Launch Live App on Shinyapps.io](https://hayelom.shinyapps.io/shiny_pitch_project_submitted/)
- **Project Pitch Presentation**: [View 5-Slide Pitch on RPubs](PASTE_YOUR_RPUBS_URL_HERE)
- **GitHub Repository**: [Source Code & Documentation](https://github.com)

---

## 📝 Project Overview
This project consists of an **R Shiny** application and a formal **5-slide data pitch**. It provides a modern interface for exploring the classic `mtcars` dataset, analyzing how vehicle specifications—such as Horsepower, Weight, and Displacement—impact fuel efficiency (MPG).

### Key Objectives:
- Visualize relationships between engine specs and MPG using interactive modeling.
- Provide a concise 5-slide pitch explaining the value of the analytics tool.
- Demonstrate the integration of `bslib` for UI and `plotly` for exploration.

## ✨ Features
- **Interactive Scatter Plots**: Powered by `plotly`, allowing users to hover for detailed car specs, zoom, and pan.
- **Custom Tooltips**: View specific details (Car Name, Cylinders, Transmission Type) just by pointing at data points.
- **Dynamic Regression**: Toggle a Linear Regression line to visualize trends instantly.
- **Modern UI/UX**: Built with the `bslib` "Flatly" theme and `bsicons`.
- **5-Slide Pitch**: Created using **RStudio Presenter/Slidify**, detailing the app's functionality and business logic.

## 📊 Presentation Details
The project includes a 5-slide pitch deck (pushed to RPubs/GitHub) covering:
1. **Title & Introduction**: Overview of the MTCars Analytics Tool.
2. **The Problem**: The difficulty of visualizing multi-variable engine data.
3. **The Solution**: An interactive dashboard with real-time regression.
4. **Data Summary**: A brief look at the `mtcars` dataset parameters.
5. **Conclusion**: Future scaling and user benefits.

## 🛠️ Tech Stack
- **Dashboard**: Shiny, `bslib`, `plotly`, `ggplot2`
- **Presentation**: RStudio Presenter / Slidify
- **Hosting**: Shinyapps.io (App) and RPubs (Pitch)

## 🚀 Local Installation & Setup
1. **Clone the repository:** `git clone https://github.com.git`
2. **Install dependencies:** `install.packages(c("shiny", "bslib", "bsicons", "ggplot2", "plotly"))`
3. **Run the App:** `shiny::runApp()`

---

**Developed by:** Hayelom Tesfay  
**Date:** February 28, 2026  
*Data Source: 1974 Motor Trend US magazine.*
