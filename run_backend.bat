@echo off
echo Starting GigInsure Backend Server...
cd backend
pip install -r requirements.txt
python -m uvicorn server:app --reload --port 8000
