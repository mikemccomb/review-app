category = Category.create(name: "Life Events", description: "Did the thing")
category = Category.create(name: "Restaurants", description: "Ate the thing")
category = Category.create(name: "Stores", description: "Bought the thing")
category = Category.create(name: "Locations", description: "Went to the thing")
category = Category.create(name: "Items", description: "Own the thing")
category = Category.create(name: "Video Games", description: "Played the thing")

subject = Subject.create(category_id: 1, average_rating: 3.0, description: "Description")
subject = Subject.create(category_id: 2, average_rating: 3.0, description: "Description")
subject = Subject.create(category_id: 3, average_rating: 3.0, description: "Description")
subject = Subject.create(category_id: 4, average_rating: 3.0, description: "Description")
subject = Subject.create(category_id: 5, average_rating: 3.0, description: "Description")
