import Foundation

class Product {
    var productID : Int
    var productName : String
    var productPrice : Double
    var productMadeInCountry : String

    init(_ productID: Int, _ productName: String, _ productPrice: Double, 
        _ productMadeInCountry: String) {
        self.productID = productID
        self.productName = productName
        self.productPrice = productPrice
        self.productMadeInCountry = productMadeInCountry
    }
}
let product1 = Product(110, "Diet Pepsi", 2, "USA")


class Drink : Product{
    var drinkID : Int { 
        get {super.productID;}
        set(value) {super.productID = value;}
    }
    var drinkName : String {
        get {super.productName;}
        set(value) {super.productName = value;}
    }
    var drinkPrice : Double { 
        get {super.productPrice;}
        set(value) {super.productPrice = value;}
    }
    var drinkMadeInCountry : String { 
        get {super.productMadeInCountry;}
        set(value) {super.productMadeInCountry = value;}
    }
    var isDrinkDiet : Bool
    var drinkSize : Int

    init(_ drinkID : Int, _ drinkName : String, _ drinkPrice : Double, _ drinkMadeInCountry : String,
        _ isDrinkDiet : Bool, _ drinkSize : Int){
        self.isDrinkDiet = isDrinkDiet
        self.drinkSize = drinkSize
        super.init(drinkID, drinkName, drinkPrice, drinkMadeInCountry)
    }
}


class Food : Product{
    var foodID : Int { 
        get {super.productID;}
        set(value) {super.productID = value;}
    }
    var foodName : String {
        get {super.productName;}
        set(value) {super.productName = value;}
    }
    var foodPrice : Double { 
        get {super.productPrice;}
        set(value) {super.productPrice = value;}
    }
    var foodMadeInCountry : String { 
        get {super.productMadeInCountry;}
        set(value) {super.productMadeInCountry = value;}
    }
    var foodCalorie : Int
    var foodSize : Int
    var foodIngredients : [String]

    init(_ foodID : Int, _ foodName : String, _ foodPrice : Double, _ foodMadeInCountry : String,
        _ foodCalorie : Int, _ foodSize : Int, _ foodIngredients : [String]){
        self.foodCalorie = foodCalorie
        self.foodSize = foodSize
        self.foodIngredients = foodIngredients
        super.init(foodID, foodName, foodPrice, foodMadeInCountry)
    }
}


class Cloth : Product{
    var clothID : Int { 
        get {super.productID;}
        set(value) {super.productID = value;}
    }
    var clothName : String {
        get {super.productName;}
        set(value) {super.productName = value;}
    }
    var clothPrice : Double { 
        get {super.productPrice;}
        set(value) {super.productPrice = value;}
    }
    var clothMadeInCountry : String { 
        get {super.productMadeInCountry;}
        set(value) {super.productMadeInCountry = value;}
    }
    var clothMaterials : [Material]

    init(_ clothID : Int, _ clothName : String, _ clothPrice : Double, _ clothMadeInCountry : String,
        _ clothMaterials : [Material]){
        self.clothMaterials = clothMaterials
        super.init(clothID, clothName, clothPrice, clothMadeInCountry)
    }
}

class Material {
    var materialID : Int
    var materialName : String

    init(_ materialID : Int, _ materialName : String) {
        self.materialID = materialID
        self.materialName = materialName
    }
}


class ShoppingCart {
    var drinks : [Drink] = []
    var foods : [Food] = []
    var cloths : [Cloth] = []

    func addItem(_ item : AnyObject) {
        if (type(of: item) == Drink.self) {
            drinks.append(item as! Drink)
        } else if (type(of: item) == Food.self) {
            foods.append(item as! Food)
        } else if (type(of: item) == Cloth.self) {
            cloths.append(item as! Cloth)
        }
    }

    func printTotalAmount() {
        let drinkTotal = drinks.map{$0.drinkPrice}.reduce(0, +)
        let foodTotal = foods.map{$0.foodPrice}.reduce(0, +)
        let clothTotal = cloths.map{$0.clothPrice}.reduce(0, +)
        print(drinkTotal + foodTotal + clothTotal)
    }

    func printPurchasedName() {
        let drinkTotal = drinks.map{$0.drinkName}
        let foodTotal = foods.map{$0.foodName}
        let clothTotal = cloths.map{$0.clothName}
        print((Array(Set(drinkTotal)) + Array(Set(foodTotal)) + Array(Set(clothTotal))).joined(separator: ", "))
    }
}

let drink1 = Drink(412,"Pepsi", 2.0, "USA", false, 150)
let drink2 = Drink(183,"Ginger Zero", 3.0, "Canada", true, 200)
let food1 = Food(100, "Chicken", 8.0, "Canada", 350, 4, ["chicken", "oil", "cheese"])
let food2 = Food(101, "Pasta", 18.0, "Canada", 250, 3, ["pasta", "meat", "spinach"])
let cloth1 = Cloth(701, "T-shirt", 15.0, "China", [Material(10, "cotton"), Material(11, "nylon")])

var cart = ShoppingCart()

cart.addItem(drink1)
cart.addItem(drink1)
cart.addItem(drink1)
cart.addItem(drink2)
cart.addItem(food1)
cart.addItem(food1)
cart.addItem(food2)
cart.addItem(food2)
cart.addItem(cloth1)


print(cart.drinks[0].drinkName)
cart.printTotalAmount()
cart.printPurchasedName()

