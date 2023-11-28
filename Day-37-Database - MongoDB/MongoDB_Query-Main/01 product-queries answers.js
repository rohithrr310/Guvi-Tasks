//01)  Find all the information about each products

db.products.find();

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 02) Find the product price which are between 400 to 800

db.products.find({ $and: [{ product_price: { $gt: 400, $lt: 800 } }] });

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 03) Find the product price which are not between 400 to 600

db.products.find({
  $or: [{ product_price: { $lt: 400 } }, { product_price: { $gt: 600 } }],
});

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 04) List the four product which are grater than 500 in price

db.products.find({ product_price: { $gt: 500 } }).limit(4);

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 05) Find the product name and product material of each products

db.products.find({}, { _id: 0, product_name: 1, product_material: 1 });

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 06) Find the product with a row id of 10

db.products.find({ id: "10" });

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 07) Find only the product name and product material

db.products.find({}, { _id: 0, product_name: 1, product_material: 1 });

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 08) Find all products which contain the value of soft in product material

db.products.find({ product_material: "Soft" });

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 09) Find products which contain product color indigo  and product price 492.00

db.products.find({
  $or: [{ product_color: { $eq: "indigo" } }, { product_price: { $eq: 492 } }],
});

/*-------------------------------------------------------------------------------------------------------------------------------*/

// 10) Delete the products which product price value are same

db.products
  .aggregate([
    { $group: { _id: "$product_price", count: { $sum: 1 } } },
    { $match: { count: { $gt: 1 } } },
  ])
  .forEach((doc) => {
    db.products.deleteMany({ product_price: doc._id });
  });

/*-------------------------------------------------------------------------------------------------------------------------------*/
