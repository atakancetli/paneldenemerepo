# 1. Çalışma parametrelerini içeren bir veri yapısı (Hashtable) oluşturuyoruz
$parametreler = @{
    UygulamaAdi = "OrnekUygulama"
    Versiyon = "1.0.0"
    CalistirmaZamani = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
    GelistiriciModu = $true
    ZamanAsimiSuresi = 30
}

# 2. JSON dosyasının oluşturulacağı dosya adını/yolunu belirliyoruz (Mevcut dizin)
$dosyaYolu = ".\ayarlar.json"

# 3. Veriyi JSON'a çevirip dosyaya yazdırıyoruz
$parametreler | ConvertTo-Json | Set-Content -Path $dosyaYolu -Encoding UTF8

# 4. Kullanıcıya işlemin bittiğini bildiren bir mesaj gösteriyoruz
Write-Host "Parametreler başarıyla JSON dosyasına yazıldı!" -ForegroundColor Green
Write-Host "Dosya konumu: $((Get-Item $dosyaYolu).FullName)" -ForegroundColor Cyan