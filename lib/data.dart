class Recipe {
  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;

  Recipe(this.title, this.description, this.image, this.calories, this.carbo,
      this.protein);
}

List<Recipe> getRecipes() {
  return <Recipe>[
    Recipe("Capuccino", "So irresistibly delicious",
        "assets/images/capuccino.png", 70, 250, 15),
    Recipe("Espresso ", "True Italian classic with a meaty, chilli sauce",
        "assets/images/espresso.png", 200, 45, 10),
    Recipe("Mocca ", "Crispy Garlic Roasted Potatoes",
        "assets/images/mocca.png", 150, 30, 8),
    Recipe("Latte ", "White Onion, Fennel, and watercress Salad",
        "assets/images/latte.png", 200, 35, 12),
    Recipe("Americano", "Bacon-Wrapped Filet Mignon",
        "assets/images/americano.png", 250, 55, 20),
  ];
}
