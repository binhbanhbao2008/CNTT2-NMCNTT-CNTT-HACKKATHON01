write-output "VU DINH BINH"
get-date
gc logs/course.log | select-string "* ERROR" >> logs/auto_report.txt
$baocao = (gc logs/auto_report.txt | measure-object -line ).count
write-output "tong so su co: $baocao"