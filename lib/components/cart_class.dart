class AddOns {

	String name;
	double price;

	AddOns({

			required this.name, 
			required this.price

		});

}



class CartClass {


		String name;
		double price;
		int portionQuantiy;
		String image;
		List<AddOns> addOn;

		CartClass({

			required this.name, 
			required this.price, 
			required this.portionQuantiy, 
			required this.addOn,
			required this.image

			});
}