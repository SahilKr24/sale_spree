class Item {
  final String item;
  final String desc;
  final double amazon;
  final double flipkart;
  final double snapdeal;
  final double price;
  final String reviews;
  final imageUrl;

  Item(
      {this.item,
        this.desc,
        this.amazon,
        this.flipkart,
        this.snapdeal,
        this.price,
        this.reviews,
        this.imageUrl});
}

var items = [
  Item(
      item: "OnePl0x 8",
      desc: "lead with speed",
      price: 42000,
      amazon: 41000,
      flipkart: 40000,
      snapdeal: 5000,
      reviews : "so much speed its beyond my control",
    imageUrl: "https://i.guim.co.uk/img/media/bd6118679c80a512c39303d540a91e24f5f8b2fc/276_294_4335_2601/master/4335.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=d99409a1554ff956f130e0243608ad0a"
  ),
  Item(
      item: "OnePl0x 8 Pro",
      desc: "lead with more speed",
      price: 54000,
      amazon: 55000,
      flipkart: 50000,
      snapdeal: 10,
      reviews: "speed pro max ultra",
    imageUrl: "https://c.ndtvimg.com/2020-04/o39rpsb8_gadgets-360_640x480_15_April_20.jpg?downsize=600:450"
  ),
  Item(
    item: "Haylou GT 1 Case",
    desc: "cartoon case for earphones",
    price: 1000,
    amazon: 3000,
    flipkart: 900,
    snapdeal: 50,
    reviews: "nice case, fall and bump protection",
    imageUrl: "https://ae01.alicdn.com/kf/Hb24082ac7a6e468dbcab736fc2363effx.jpg"
  ),
  Item(
    item: "Coffee machine",
    desc: "Espresso and Capuccino machine lelo",
    price: 7000,
    amazon: 8000,
    flipkart: 6000,
    snapdeal: 5000,
    reviews: "the reason why i'm awake and this code exists",
    imageUrl: "https://ae01.alicdn.com/kf/H454eb221daef41b2835ac5fa26c1a2e1b.jpg"
  )
];

var cart = [
  Item(
    item: "Haylou GT 1 Case",
    desc: "cartoon case for earphones",
    price: 1000,
    amazon: 3000,
    flipkart: 900,
    snapdeal: 50,
    reviews: "nice case, fall and bump protection",
    imageUrl: "https://ae01.alicdn.com/kf/Hb24082ac7a6e468dbcab736fc2363effx.jpg"
  ),
  Item(
      item: "OnePl0x 8",
      desc: "lead with speed",
      price: 42000,
      amazon: 41000,
      flipkart: 40000,
      snapdeal: 5000,
      reviews : "so much speed its beyond my control",
    imageUrl: "https://i.guim.co.uk/img/media/bd6118679c80a512c39303d540a91e24f5f8b2fc/276_294_4335_2601/master/4335.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=d99409a1554ff956f130e0243608ad0a"
  ),

];