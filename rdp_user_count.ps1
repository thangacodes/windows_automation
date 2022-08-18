
# Get today’s date for the report

$today = Get-Date

# Setup email parameters

$subject = “CONCURRENT USER SESSIONS REPORT -” + $today

$priority = “Normal”

$smtpServer = “mail.smtp.com”

$emailFrom = “example@SNOW.onmicrosoft.com”

$emailTo = "thangadurai@example.com"

# Create a fresh variable to collect the results. You can use this to output as desired

$SessionList = “CONCURRENT USER SESSIONS REPORT – ” + $today + “`n`n”

# Query to the windows vDA's computers

$Servers = "winrdp2k1201.example.com", "winrdp2k1202.example.com"

$rdpcount = qwinsta /server:$Servers
$rdpcount
$rdpcount > C:\Users\thangaa\Desktop\conusers.txt 


# Send the report email 
Send-MailMessage -To $emailTo -Subject $subject -Attachments C:\Users\thangaa\Desktop\conusers.txt  -SmtpServer $smtpServer -From $emailFrom -Priority $priority

