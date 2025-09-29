@echo off
chcp 65001 >nul
echo.
echo ========================================
echo 🚀  نشر موقع عبد الله هاني على Netlify
echo ========================================
echo.

echo 📦 جاري بناء المشروع...
dotnet publish -c Release -o publish

if %errorlevel% neq 0 (
    echo ❌ فشل بناء المشروع! تأكد من تثبيت .NET SDK
    pause
    exit /b 1
)

echo.
echo ✅ تم بناء المشروع بنجاح!
echo.

echo 📁 الملفات جاهزة في مجلد: publish\wwwroot
echo.

echo 🎯 الآن قم بالخطوات التالية:
echo.
echo 1. اذهب إلى: https://app.netlify.com/drop
echo 2. اترك الصفحة مفتوحة
echo 3. عد إلى هذا النافذة واضغط أي مفتاح لفتح مجلد النشر
echo.

pause >nul

echo.
echo 📂 فتح مجلد النشر...
start "" "publish\wwwroot"

echo.
echo 📌 تعليمات النهائية:
echo.
echo 🔹 اسحب مجلد 'wwwroot' كاملاً من النافذة التي ستفتح
echo 🔹 أسقطه في صفحة Netlify في المتصفح
echo 🔹 انتظر 30 ثانية حتى يتم النشر
echo 🔹 انسخ الرابط المجاني الجديد!
echo.
echo 🎉 موقع عبد الله هاني الآن على الإنترنت!
echo.

echo اضغط أي مفتاح لإغلاق النافذة...
pause >nul