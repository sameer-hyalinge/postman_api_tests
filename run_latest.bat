@echo off

REM === Step 1: Fetch latest collection from Postman Cloud ===
curl --location "https://api.getpostman.com/collections/45496511-4fe9ff6a-5178-4acc-9c91-be8a0e492b42" ^
--header "X-Api-Key: PMAK-686516c437e4f10001d15b25-0b5283b757c796fd67857f23e445c995de" ^
-o latest_collection.json

REM === Step 2: Run the collection with Newman ===
newman run latest_collection.json ^
--environment postman_env.json ^
--reporters cli,htmlextra ^
--reporter-htmlextra-export reports\result.html

pause
