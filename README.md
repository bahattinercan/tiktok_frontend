# TikTok UI — Flutter

TikTok mobil arayüzünün Flutter ile klonu: sekme tabanlı gezinme, akış kartları ve profil
sekmeleri. `tiktok_ui/` klasöründe tek bir Flutter uygulaması var.

## Yapı

```
tiktok_ui/lib/
├── main.dart                 # uygulama girişi
├── home_page.dart            # alt sekme çubuğu
├── pages/
│   ├── home.dart             # akış
│   ├── search.dart
│   ├── reels.dart
│   ├── inbox.dart
│   └── profile.dart
├── posts/post1.dart … post3.dart
└── utils/
    ├── post_template.dart    # yeniden kullanılan kart iskeleti
    ├── profiletab_1…3.dart   # profil sekmeleri
    └── my_button.dart
```

Akış kartları `post_template.dart` üzerinden üretilir; üç gönderi aynı iskeleti farklı
içerikle kullanır.

## Çalıştırma

```bash
cd tiktok_ui
flutter pub get
flutter run
```

## Sınırlar

**Backend yok, video yok.** Akış içeriği `posts/` altındaki sabit dosyalardan gelir; oynatma,
yükleme, beğeni ve mesajlaşma gerçek değil. Amaç ekran düzenini ve gezinme akışını kurmaktı.
