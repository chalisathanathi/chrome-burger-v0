use ("chrome-burger-db");

// db.staff.find();

// db.menu_items.find({category: "Burger"});

// db.menu_items.find().sort({price: -1});

// db.menu_items.find({}, {name: 1, price: 1, _id: 0}).sort({price: 1}).limit(3);

// db.suppliers.aggregate([
    {$match: {name: "Patty's Premium Meats"}}, 
    {$lookup: {
        from: ingredients
        localField: _id
        foreignField: supplier_id
        as: ingredients_suppliers
    }},
    {$unwind: "$ingredients_suppliers"},
    {$project: {_id: 0}}
;