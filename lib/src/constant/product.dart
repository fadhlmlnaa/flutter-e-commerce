class Product {
  final String namaProduk;
  final String deskripsi;
  final String foto;
  final double rating;
  bool isFavorite;
  bool isInCart;

  Product({
    required this.namaProduk,
    required this.deskripsi,
    required this.foto,
    required this.rating,
    this.isFavorite = false,
    this.isInCart = false,
  });
}

List<Product> products = [
  Product(
    namaProduk: "Smartphone Ultra X1",
    deskripsi: "Smartphone dengan layar OLED 6.7 inci dan kamera 108MP untuk fotografi yang luar biasa.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.7,
  ),
  Product(
    namaProduk: "Laptop Pro 15",
    deskripsi: "Laptop profesional dengan prosesor Intel i7 generasi terbaru dan RAM 16GB.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.5,
  ),
  Product(
    namaProduk: "Headphone Bass Boost",
    deskripsi: "Headphone nirkabel dengan bass yang mendalam dan peredam suara aktif.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.6,
  ),
  Product(
    namaProduk: "Smart TV 4K Ultra HD",
    deskripsi: "Smart TV 55 inci dengan kualitas gambar 4K dan akses ke berbagai aplikasi streaming.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.8,
  ),
  Product(
    namaProduk: "Tablet Pro",
    deskripsi: "Tablet dengan layar 10.5 inci, ideal untuk kerja dan hiburan.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.4,
  ),
  Product(
    namaProduk: "Smartwatch Fit",
    deskripsi: "Smartwatch dengan fitur kesehatan seperti detak jantung dan pelacak aktivitas.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.3,
  ),
  Product(
    namaProduk: "Kamera Mirrorless Z10",
    deskripsi: "Kamera mirrorless dengan sensor 24MP dan video 4K.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.7,
  ),
  Product(
    namaProduk: "Blender Pro 1000W",
    deskripsi: "Blender dengan motor 1000W untuk jus dan smoothie.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.6,
  ),
  Product(
    namaProduk: "Mesin Kopi Barista",
    deskripsi: "Mesin kopi otomatis dengan penggiling biji kopi.",
    foto: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-14341688/samsung_samsung_galaxy_s21_ultra_5g_full01_ibxd3vto.jpg",
    rating: 4.5,
  ),
];
