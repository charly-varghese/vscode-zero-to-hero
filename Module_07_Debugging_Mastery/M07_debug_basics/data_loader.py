import csv
from pathlib import Path


def load_sales(file_path):
    total = 0
    with open(file_path, newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            sale = row.get("sales")
            if sale and sale.isdigit():
                total += int(sale)
    return total


if __name__ == "__main__":
    BASE_DIR = Path(__file__).parent
    csv_path = BASE_DIR / "sales.csv"

    print("DEBUG: data_loader.py is running")
    result = load_sales(csv_path)
    print("Total Sales:", result)
