echo "WizziX - Hecho por Stadof" > ClavesWifi.txt
echo "" >> ClavesWifi.txt
dir *.xml |% {
$prueba=[xml] (get-content $_)
$z= "______________________________________________________________________ `r`r`n Nombre de la red WiFi: "+$prueba.WLANProfile.SSIDConfig.SSID.name + "`r`n Contenido de la clave: " +$prueba.WLANProfile.MSM.Security.sharedKey.keymaterial + "`n______________________________________________________________________`n"
Out-File ClavesWifi.txt -Append -InputObject $z

}

rm *.xml -Force