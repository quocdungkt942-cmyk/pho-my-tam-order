CREATE TABLE IF NOT EXISTS tables (id INTEGER PRIMARY KEY, name TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS orders (id TEXT PRIMARY KEY, table_id INTEGER NOT NULL, status TEXT NOT NULL, items_json TEXT NOT NULL, note TEXT DEFAULT '', staff TEXT NOT NULL, total INTEGER NOT NULL, created_at TEXT NOT NULL, updated_at TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS payments (id TEXT PRIMARY KEY, table_id INTEGER NOT NULL, order_ids_json TEXT NOT NULL, method TEXT NOT NULL, total INTEGER NOT NULL, staff TEXT NOT NULL, paid_at TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS settings (key TEXT PRIMARY KEY, value_json TEXT NOT NULL);
INSERT OR IGNORE INTO settings(key,value_json) VALUES
('drinkPrices','{"coca":15000,"pepsi":15000,"bo-huc":15000,"nuoc-suoi":10000}'),
('extraPrices','{"trung-tran":8000,"top-mo":10000}');
INSERT OR IGNORE INTO tables(id,name) VALUES (1,'Bàn 01'),(2,'Bàn 02'),(3,'Bàn 03'),(4,'Bàn 04'),(5,'Bàn 05'),(6,'Bàn 06'),(7,'Bàn 07'),(8,'Bàn 08'),(9,'Bàn 09'),(10,'Bàn 10');