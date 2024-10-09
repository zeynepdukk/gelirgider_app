## Genel Bakış

Aylık Özet Uygulaması, gelir ve giderlerinizi takip etmek ve görselleştirmek için tasarlanmış bir Flutter uygulamasıdır. Bu uygulama, kullanıcıların aylık finansal faaliyetlerini görmesini, harcamalarını kategorize etmesini ve grafik raporları oluşturmasını sağlar.

### Özellikler

- **Aylık Özet**: Aylık gelir ve giderlerinizi gösterir.
- **Gelir ve Gider Takibi**: Tüm işlemleri, kategori ve tutar detayları ile listeler.
- **Kategorik Görselleştirme**: Aylık harcamaları grafiksel olarak sunarak daha iyi içgörüler sağlar.

## Storyboard
![storyboard](https://github.com/user-attachments/assets/07f09846-4a53-418e-b3e1-d92cf84bd0a5)

## Uygulama Resimleri
![home](https://github.com/user-attachments/assets/a35db284-6cda-4629-80f6-e787baa7b794)
![new](https://github.com/user-attachments/assets/6c2744cb-a603-403f-b9d6-a280c1bde7a9)
![new2](https://github.com/user-attachments/assets/3134d40b-73ae-41e6-accf-badedcc446c7)
![new3](https://github.com/user-attachments/assets/ae483507-5d26-4dfb-ba2d-20189761b123)
![new4](https://github.com/user-attachments/assets/b2c2908a-0656-4f46-8c69-8db6d3ae09b3)

## Fonksiyonlar

### `addAmount(List<TransactionStruct>? transactions)`

```dart
double? addAmount(List<TransactionStruct>? transactions) {
  double totalAmount = 0.0;

  if (transactions == null || transactions.isEmpty) {
    return totalAmount;
  }

  for (var transaction in transactions) {
    totalAmount += transaction.amount;
  }

  return totalAmount;
}
```
### `getCategoriesName(List<TransactionStruct>? transactions, List<CategoriesStruct>? category)`
```dart
List<String>? getCategoriesName(
  List<TransactionStruct>? transactions,
  List<CategoriesStruct>? category,
) {
  if (transactions == null ||
      category == null ||
      transactions.isEmpty ||
      category.isEmpty) {
    return null;
  }

  List<String> categoryNames = [];
  for (var transaction in transactions) {
    for (var cat in category) {
      if (transaction.category == cat.id) {
        categoryNames.add(cat.name);
        break;
      }
    }
  }

  return categoryNames;
}
```

