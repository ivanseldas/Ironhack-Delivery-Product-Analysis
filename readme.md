# IronHack Delivery - Product Analysis 

Analyzed IronHack Delivery’s data to optimize KPIs, streamline chat interactions, test pricing strategies, and explore price discrepancies. SQL, A/B testing, and EDA in action for real-world delivery insights.

![image](https://github.com/user-attachments/assets/ba587790-577a-45bd-b242-e41a98e483f4)

---

## 1. Key Performance Indicators (KPIs)

**Objective:** Identify the top three KPIs for IronHack Delivery.

- **KPIs Selected:**
  1. **Percentage of Orders Cancelled**

![orders_cancelled](https://github.com/user-attachments/assets/374bc9de-643f-4b5a-91d8-7913a41af7b7)

  2. **Average Purchase Total Price per Order**

![average_purcharse](https://github.com/user-attachments/assets/a0030b5d-2f1c-47d0-8a7b-58daa370e237)

  3. **Percentage of Orders with a Discrepancy Between `products_total` and `purchase_total_price`**

![price_discrepancy](https://github.com/user-attachments/assets/8317f656-6171-4b0a-88d5-0defb9c7b0a5)


---

## 2. SQL Analysis

**Objective:** Aggregate customer-courier chat messages into order-level conversations.

- **Solution:** Built a scalable SQL query to create a summary table (`customer_courier_conversations`) with key conversation metrics (timestamps, sender type, response time, order stage).

---

## 3. Experimental Design

**Objective:** Assess the impact of increasing delivery fees (from €1.9 to €2.1) on KPIs.

- **Plan:**
  - **Type of Test:** Randomized Controlled Trial (RCT).
  - **KPIs Monitored:** Customer Retention, Average Order Value, Order Frequency.
  - **Steps:** Explained test setup, metric selection, duration, and data analysis approach.

---

## 4. Exploratory Data Analysis (EDA)

**Objective:** Analyze discrepancies between checkout prices and actual prices for non-integrated partners.

- **Insights:**
  - Calculated under-authorization rate.
  - Evaluated 20% authorization increase effectiveness.
  - Country-wise comparison.
  - Identified high-risk stores.
  - Analyzed cancellation correlation with price differences.

---

## Tools Used

- **SQL, Python (Pandas, Matplotlib):** Data processing, EDA, and visualization.
- **Experiment Design:** RCTs for hypothesis testing.

---

## Key Takeaways

This project showcases proficiency in SQL, KPI analysis, experimental design, and EDA, with actionable insights for business optimization.
