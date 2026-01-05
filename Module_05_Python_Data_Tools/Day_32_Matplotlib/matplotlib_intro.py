import matplotlib.pyplot as plt
import numpy as np

# Sample data
x = np.arange(1, 6)
y = np.array([1000, 1500, 1200, 1800, 1600])

# Line plot
plt.figure()
plt.plot(x, y)
plt.title("Monthly Sales Trend")
plt.xlabel("Month")
plt.ylabel("Sales Amount")
plt.grid(True)
plt.savefig("plots/sales_line_plot.png")
plt.close()

# Bar chart
plt.figure()
plt.bar(x, y)
plt.title("Monthly Sales Comparison")
plt.xlabel("Month")
plt.ylabel("Sales Amount")
plt.savefig("plots/sales_bar_chart.png")
plt.close()

print("Plots generated and saved successfully.")
