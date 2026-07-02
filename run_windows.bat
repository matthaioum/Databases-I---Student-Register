
@echo off
echo Δημιουργία βάσης δεδομένων...
python init_db.py

echo Εκκίνηση Flask εφαρμογής...
python app.py

pause
