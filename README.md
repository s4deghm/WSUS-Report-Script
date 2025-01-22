# WSUS Report Script
This PowerShell script generates a detailed report from WSUS (Windows Server Update Services). It provides comprehensive insights into the update status of all client machines managed by WSUS. The script is designed to work on the WSUS server itself and fetches data directly from the server's database.

# Features
#### Reports computer groups and their member machines.
##### Includes details such as:
- Computer names.
- IP addresses.
- Operating systems.
- Number of installed, not installed, and failed updates.
- Last contact time with the WSUS server.
- The latest installed patch (title and KB number).
- Excludes the All Computers group to prevent duplicate data.
#### How It Works
1. The script connects to the WSUS server running locally.
2. It retrieves all computer groups, excluding the All Computers group.
3. For each group, it collects update statistics and identifies the latest patch installed on each machine.
4. The data is exported as a CSV file for easy analysis and reporting.
#### Compatibility
##### Windows Server Versions:
- Windows Server 2016
- Windows Server 2019
- Windows Server 2022
- PowerShell Version: 5.1 or higher.
#### Usage
1. Copy the script file (Generate-WSUS-Report.ps1) to your WSUS server.
2. Open PowerShell as an administrator.
3. Run the script:
   ```
   .\Generate-WSUS-Report.ps1
   ```
4. The report will be saved as C:\WSUS_Report_2019.csv.

# اسکریپت گزارش‌گیری از WSUS 
این اسکریپت PowerShell یک گزارش دقیق از WSUS (Windows Server Update Services) تولید می‌کند. اطلاعات کاملی درباره وضعیت آپدیت ماشین‌های کلاینتی که توسط WSUS مدیریت می‌شوند، ارائه می‌دهد. این اسکریپت برای اجرا روی خود سرور WSUS طراحی شده و داده‌ها را مستقیماً از پایگاه‌داده سرور استخراج می‌کند.

# ویژگی‌ها
### گزارش‌گیری از گروه‌های کامپیوتر و اعضای آن‌ها.
#### شامل جزئیاتی از قبیل:
-	نام کامپیوترها.
-	آدرس‌های IP.
-	سیستم‌عامل‌ها.
-	تعداد آپدیت‌های نصب‌شده، نصب‌نشده و ناموفق.
-	زمان آخرین ارتباط با سرور WSUS.
-	آخرین Patch نصب‌شده (عنوان و شماره KB).
-	حذف گروه All Computers برای جلوگیری از تکرار داده‌ها.
# نحوه عملکرد
1.	اسکریپت به سرور WSUS محلی متصل می‌شود.
2.	تمام گروه‌های کامپیوتر (به جز گروه All Computers) را استخراج می‌کند.
3.	برای هر گروه، آمار آپدیت‌ها را جمع‌آوری کرده و آخرین Patch نصب‌شده روی هر ماشین را شناسایی می‌کند.
4.	داده‌ها به صورت یک فایل CSV ذخیره می‌شوند که به راحتی قابل تحلیل و گزارش‌گیری است.
# سازگاری
### نسخه‌های ویندوز سرور:
-	ویندوز سرور 2016
-	ویندوز سرور 2019
-	ویندوز سرور 2022
-	نسخه پاورشل: 5.1 یا بالاتر.
# نحوه استفاده
1.	 فایل اسکریپت (Generate-WSUS-Report.ps1) را به سرور WSUS کپی کنید.
2.	PowerShell را به عنوان Administrator باز کنید.
3.	اسکریپت را اجرا کنید:
   ```
   .\Generate-WSUS-Report.ps1
   ```

4. گزارش به صورت فایل C:\WSUS_Report_2019.csv ذخیره می‌شود.
