@echo off
echo ======================================================
echo    Pushing GigInsure Project to GitHub Repo
echo ======================================================
echo.

git init
git remote remove origin >nul 2>&1
git remote add origin https://github.com/NishanthKamalakkannan/GIGINSURE.git
git branch -M main

echo Creating Commit 1/6: Backend FastAPI Server...
git add backend/
git commit -m "feat(backend): initialize FastAPI server, async MongoDB client, and JWT authentication"

echo Creating Commit 2/6: Frontend React 19 App...
git add frontend/
git commit -m "feat(frontend): initialize React 19 SPA dashboard with Tailwind CSS, Radix UI, and CRACO"

echo Creating Commit 3/6: Testing Suite...
git add tests/ backend_test.py new_features_test.py admin_debug.py 2>nul
git commit -m "test: add comprehensive backend API testing suite and parametric trigger verification"

echo Creating Commit 4/6: Architecture Docs...
git add design_guidelines.json auth_testing.md test_result.md 2>nul
git commit -m "docs: add parametric design guidelines, auth testing spec, and architecture documentation"

echo Creating Commit 5/6: Startup & Launchers...
git add start_all.bat run_backend.bat run_frontend.bat diagnose.bat .gitignore README.md 2>nul
git commit -m "chore: add local 1-click startup scripts and system diagnostics"

echo Creating Commit 6/6: Core Fixes & Enhancements...
git add .
git commit -m "fix(core): enable payment simulation fallback and resolve React 19 peer dependencies"

echo.
echo Pushing commits to GitHub (main branch)...
git push -u origin main --force

echo.
echo ======================================================
echo   Push Complete! Check your GitHub contribution graph.
echo ======================================================
pause
