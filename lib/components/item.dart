class Item {
  final String item;
  final String desc;
  final double amazon;
  final double flipkart;
  final double snapdeal;
  final double price;
  final imageUrl;

  Item(
      {this.item,
        this.desc,
        this.amazon,
        this.flipkart,
        this.snapdeal,
        this.price,
        this.imageUrl});
}

var items = [
  Item(
      item: "OnePlus 8",
      desc: "Lead with speed",
      price: 42000,
      amazon: 41000,
      flipkart: 40000,
      snapdeal: 5000,
    imageUrl: "https://i.guim.co.uk/img/media/bd6118679c80a512c39303d540a91e24f5f8b2fc/276_294_4335_2601/master/4335.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=d99409a1554ff956f130e0243608ad0a"
  ),
  Item(
      item: "OnePlus 8 pro",
      desc: "lead with more speed",
      price: 54000,
      amazon: 55000,
      flipkart: 50000,
      snapdeal: 10,
    imageUrl: "https://c.ndtvimg.com/2020-04/o39rpsb8_gadgets-360_640x480_15_April_20.jpg?downsize=600:450"
  ),
  Item(
    item: "Haylou gt1 case",
    desc: "Cartoon case for earphones",
    price: 1000,
    amazon: 3000,
    flipkart: 900,
    snapdeal: 50,
    imageUrl: "https://ae01.alicdn.com/kf/Hb24082ac7a6e468dbcab736fc2363effx.jpg"
  ),
  Item(
    item: "Coffee machine",
    desc: "Espresso and Capuccino machine lelo",
    price: 7000,
    amazon: 8000,
    flipkart: 6000,
    snapdeal: 5000,
    imageUrl: "https://ae01.alicdn.com/kf/H454eb221daef41b2835ac5fa26c1a2e1b.jpg"
  )
];

var citems = [
  Item(
      item: "Laptops",
      desc: "Cheap laptops",
      price: 100000,
      snapdeal: 90000,
      flipkart: 89000,
      amazon: 91000,
      imageUrl:
      'https://image.freepik.com/free-vector/business-ad-banners_83728-2398.jpg'),
  Item(
      item: "Laptops",
      desc: "Cheap laptops",
      price: 100000,
      snapdeal: 90000,
      flipkart: 89000,
      amazon: 91000,
      imageUrl:
      'https://image.freepik.com/free-psd/online-shopping-banner-concept_23-2148567672.jpg'),

];