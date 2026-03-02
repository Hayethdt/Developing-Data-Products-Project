# 🏎️ Data Product Development: Interactive Analytics & Regression Suite
### A high-performance dashboard for predictive modeling and automated data insights

[![Shinyapps.io](https://img.shields.io)](https://hayelom.shinyapps.io/shiny_pitch_project_submitted/)
[![RPubs](https://img.shields.io)](https://rpubs.com/hayet/dashboard-shiny-pitch)
[![License: MIT](https://img.shields.io)](https://opensource.org)

This repository contains the final project for the **Developing Data Products** course, part of the [Johns Hopkins University Data Science Specialization](https://www.coursera.org) on [Coursera](https://www.coursera.org).

## 🌐 Project Links
- **Interactive Dashboard**: [Launch Live App on Shinyapps.io](https://hayelom.shinyapps.io/shiny_pitch_project_submitted/)
- **Project Pitch Presentation**: [View 5-Slide Pitch on RPubs](https://rpubs.com/hayet/dashboard-shiny-pitch)
- **GitHub Repository**: [Source Code & Documentation](https://github.com/Hayethdt/Developing-Data-Products-Project.git)

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
*Data Source: Motor Trend US magazine.*
