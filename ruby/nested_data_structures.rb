menu = {
	appetizers: ["fried calamari", "artichoke dip"],
	entrees: {
		from_the_ocean: ["shrimp a la carte", "tilapia scampi", "fish tacos"],
		chicken: ["baked garlic chicken", "chicken parmesan", "chicken enchiladas"],
		vegetarian: ["homemade veggie pizza", "spinach enchiladas", "thai tofu"]
	},
	dessert: ["chocolate lava cake", "cheesecake"],
	drinks: []
}

menu[:entrees][:from_the_ocean][2]

menu[:entrees][:chicken].last

menu[:drinks].push("sodas", "lemonade", "beer", "wine")

menu[:drinks]

menu[:entrees][:vegetarian].first
