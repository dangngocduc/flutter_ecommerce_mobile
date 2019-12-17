# Flutter E-Commerce Mobile

Demo cho ứng dụng TMDT với Flutter. Ứng dụng này viết lúc nhàn dỗi nhằm mục đích có cái ae trong team review góp ý.

## Getting Started
Design app tham khảo Figma ở link này:

[Design Figma](https://www.figma.com/file/RP12HfFdgvuitYP6lz8X3h/E-commerce-Application-by-Fively-%2F-Light-Version-(Copy)?node-id=91%3A274&viewport=1266%2C-486%2C1.3325926065444946 
)

- Dynamic Theme cho phép config support thay đổi darkmode sau này.

    `lib/theme/dynamic_theme_widget.dart`
    
- Màn hình Main với _BottomNavigationBar_ có 5 tab như design.

    `lib/features/main_page.dart`
    
- Màn hình Shop với danh sách category

    `lib/features/shop_page.dart`
    
- Màn hình Catalog với danh sách product

    `lib/features/catalog_page.dart`
    
   
### Mapping _Code Widget_  <=>  _Design_

|File Code | Design |
|----|:----|
|`lib/widgets/simple_title_widget.dart`|![](./demo/components/widget_title.png)|
|`lib/widgets/lib/widgets/product_widget.dart`|![](./demo/components/widget_product.png)|
|`lib/widgets/banner/banner_simple_1_widget.dart`|![](./demo/components/widget_simple_banner_1.png)|
    
    
#### Kết quả Demo:
|         |            |   |
| ------------- |:-------------:| -----:|
|![](./demo/page_home.jpg)|![](./demo/page_shop.jpg)|![](./demo/day3_catalog_ui.jpg)|