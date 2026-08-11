# 🚕 OLA Data Analyst Project

> End-to-end ride-hailing analytics on ~1 lakh (103,024) synthetic OLA bookings from Bengaluru — from raw spreadsheet to SQL insights to an interactive Power BI dashboard.

---

## 🧰 Tech Stack

<p align="left">
  <img src="https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white" alt="Excel"/>
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/>
  <img src="https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI"/>
</p>

| Layer | Tool | Purpose |
|---|---|---|
| 🗂️ Data Source | `Excel` | 1-month, 100K+ row synthetic bookings dataset for Bengaluru |
| 🗄️ Querying | `MySQL` | 10 business-question SQL views over the bookings table |
| 📊 Visualization | `Power BI` | Multi-page interactive dashboard across 5 analysis categories |

---

## 📌 Project Overview

OLA (ride-hailing) wants visibility into ride volume, cancellations, revenue, and rating patterns across a month of Bengaluru bookings. This project builds a full analyst workflow — from a raw bookings sheet, through SQL views answering specific business questions, to a Power BI dashboard for stakeholders.

Dataset generation followed a structured spec: overall success rate ~62%, customer cancellations capped under 7%, driver cancellations under 18%, incomplete rides under 6%, with weekend/match-day ride volume and order value boosted — modeling realistic ride-hailing patterns rather than pure randomness.

📄 [`OLA-Data-Analyst-Project-Description.pdf`](./OLA-Data-Analyst-Project-Description.pdf)

---

## 📂 Dataset

- **File:** [`Bookings_OLA.xlsx`](./Bookings_OLA.xlsx)
- **Rows:** 103,024 bookings (1 month, Bengaluru)
- **Sheets:**
  - `July` — the raw transactional bookings table
  - `Sheet1` — helper formulas (`AVERAGEIF` / `COUNTIF`) for avg. distance by vehicle type and booking status counts
  - `Sheet2` — vehicle-type icon mapping (used for dashboard visuals)

**Key columns:** `Booking_ID`, `Booking_Status`, `Customer_ID`, `Vehicle_Type` (Auto, Prime Plus, Prime Sedan, Mini, Bike, eBike, Prime SUV), `Pickup_Location`, `Drop_Location`, `V_TAT`, `C_TAT`, `Canceled_Rides_by_Customer`, `Canceled_Rides_by_Driver`, `Incomplete_Rides`, `Booking_Value`, `Payment_Method`, `Ride_Distance`, `Driver_Ratings`, `Customer_Rating`

---

## 🗃️ SQL Analysis

10 views built in MySQL to answer core business questions:

| # | Question |
|---|---|
| 1 | Retrieve all successful bookings |
| 2 | Average ride distance per vehicle type |
| 3 | Total rides cancelled by customers |
| 4 | Top 5 customers by ride count |
| 5 | Rides cancelled by drivers for personal/car-related issues |
| 6 | Max & min driver ratings for Prime Sedan |
| 7 | All rides paid via UPI |
| 8 | Average customer rating per vehicle type |
| 9 | Total booking value of successful rides |
| 10 | Incomplete rides with reasons |

Each question is implemented as a `CREATE VIEW`, so results can be queried directly (e.g. `SELECT * FROM top_5_customers;`).

🗄️ [`Ola_sql_queries.sql`](./Ola_sql_queries.sql)

---

## 📊 Power BI Dashboard

A multi-page dashboard organized into 5 analysis categories:

- **Overall** — ride volume over time, booking status breakdown
- **Vehicle Type** — top 5 vehicle types by ride distance
- **Revenue** — revenue by payment method, top 5 customers by booking value, ride distance distribution per day
- **Cancellation** — cancellation reasons, split by customer vs. driver
- **Ratings** — driver rating distribution, customer vs. driver rating comparison

📊 [`Ola_Dashboard.pbix`](./Ola_Dashboard.pbix)

---

## 📁 Repository Structure

```
ola-data-analysis/
├── Bookings_OLA.xlsx                          # Raw dataset (103,024 rows, 3 sheets)
├── Ola_sql_queries.sql                         # 10 SQL views answering business questions
├── Ola_Dashboard.pbix                          # Power BI dashboard (5 pages)
├── OLA-Data-Analyst-Project-Description.pdf    # Project brief, questions & data-generation spec
└── README.md
```

---

## 🚀 Getting Started

```bash
# Clone the repo
git clone https://github.com/mehulagarwal17/ola-data-analysis.git
cd ola-data-analysis
```

1. Import `Bookings_OLA.xlsx` (July sheet) into a MySQL table named `bookings`
2. Run [`Ola_sql_queries.sql`](./Ola_sql_queries.sql) to create all 10 analysis views
3. Open `Ola_Dashboard.pbix` in Power BI Desktop to explore the dashboard

---

## 🙏 Credit

Project brief and dataset-generation spec based on the **OLA Data Analyst Project** by [Top Varsity](https://www.youtube.com/@TopVarSity) — used here as a practice project to build out the full SQL + Power BI analyst workflow.

---

## 🙋 Author

**Mehul Agarwal**
Data & Community Builder · [CodeQuesters](https://linkedin.com/in/mehulagarwal17)
