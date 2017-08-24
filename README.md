# SACofeeShop
CofeeShop Screen To place order for different variant - Size , Type , Iced etc.
* Swifty way to create cofee Shop using MVC design patter.

* Model Properties :
````
    var numOfShots : Int = 0
    var isIced : Bool = true
    var name : drinkName = .drinkNameEspresso
    var size : drinkSize = .drinkSizeMedium
````

and custom enums defined as:

````
enum drinkName : String {
    
    case drinkNameLatte = "Latte"
    case drinkNameAmerican = "Americano"
    case drinkNameEspresso = "Espresso"
}

enum drinkSize : Int {
    
    case drinkSizeSmall = 0
    case drinkSizeMedium
    case drinkSizeGrande
}

enum icedOrHotType : Int {
    case iced = 0
    case hot = 1
}
````
View Controller is conform to CSViewProtocol .

