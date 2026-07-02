
import sqlite3

conn = sqlite3.connect("university.db")

with open("Create.sql", "r", encoding="utf-8") as f:
    conn.executescript(f.read())

with open("Insert.sql", "r", encoding="utf-8") as f:
    conn.executescript(f.read())

conn.commit()
conn.close()

print("✅ Η βάση δεδομένων δημιουργήθηκε επιτυχώς.")
