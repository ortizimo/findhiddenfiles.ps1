#author Saulo 'Sal' Ortiz
#date: 2026.02.25
#desc: finds hidden files by attribute
#ver: 1.0

Get-ChildItem -Force | Where-Object { 
    $_.Attributes -match "Hidden" 
} | Select-Object FullName, Attributes