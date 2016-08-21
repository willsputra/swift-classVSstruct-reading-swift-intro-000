# Classes & Structs

![](http://i.imgur.com/zWBjkea.jpg)  

> Success is not final, failure is not fatal: it is the courage to continue that counts. -[Winston Churchill](https://en.wikipedia.org/wiki/Winston_Churchill)

## Learning Objectives

* Understand the difference between classes and structs
* Understand the difference between value types and reference types
* Work with both classes and structs

## Quiz Time!

In the last few lessons, you've learned a lot about classes and structs in Swift. Now, challenge yourself with a brief quiz to test everything you've learned.

### Question 1

Given this class that represents a giant:

```swift
class Giant {
    var name: String
    var weight: Double
    let homePlanet: String

    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}
```

And this code that instantiates an instance of `Giant`:

```swift
let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")
```

Will these three lines of code run? If not, why not?

```swift
fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"
```

> These lines of code will not run. The `homePlanet` property is a constant (it is declared with `let`), so it cannot be changed once the instance has been initialized.

### Question 2

Can you fix the class definition above so that it _does_ work?

>     class Giant {
>         var name: String
>         var weight: Double
>         var homePlanet: String
>         // The above line was changed so homePlanet is a var
>
>         init(name: String, weight: Double, homePlanet: String) {
>             self.name = name
>             self.weight = weight
>             self.homePlanet = homePlanet
>         }
>     }

### Question 3

Take a look at this struct that represents an alien:

```swift
struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}
```

And this line of code that instantiates an `Alien`:

```swift
let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
```

Will these three lines of code run? If so, why not?

```swift
bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"
```

> They will not run, because `bilbo` has been declared as a constant (using `let`), so none of its properties can be changed. This is different behavior from a class; even if a class is instantiated using `let`, its properties can still be changed if they are `var`s.

### Question 4

Can you change the declaration of `bilbo` so that the above three lines of code _do_ work?

>     var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
>     // bilbo is declared using var

### Question 5

Consider this bit of code that uses the `Giant` class:

```swift
let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"
```

What will the value of `edgar.name` be after those three lines of code are run? What will the value of `jason.name` be? Why?

> The value of `edgar.name` will be "Jason", and the value of `jason.name` will be "Jason", too. This is because `Giant` is a class, so `jason` and `edgar` are both _reference types_, so changing the property of one will affect the other one, too.

### Question 6

Given this bit of code that uses the `Alien` struct:

```swift
var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"
```

What will the value of `charles.homePlanet` be after the above code run? What about the value of `charlesFromJupiter.homePlanet`? Why?

> The value of `charles.homePlanet` will be "Pluto", and the value of `charlesFromJupiter.homePlanet` will be "Jupiter". `charles` and `charlesFromJupiter` are both `value` types, so assigning `charles` to `charlesFromJupiter` creates a _copy_ of the struct, and so changing the properties of one does not affect the others.

### Question 7

Here's a struct that represents a bank account:

```swift
struct BankAccount {
    var owner: String
    var balance: Double

    func deposit(amount: Double) {
        balance += amount
    }

    func withdraw(amount: Double) {
        balance -= amount
    }
}
```

Does this code work? Why or why not?

> No. `deposit()` and `withdraw()` both change the `balance` property. Struct methods are not allowed to change properties unless they have the `mutating` keyword.

### Question 8

Can you fix the `BankAccount` struct so it _does_ work?

>     struct BankAccount {
>         var owner: String
>         var balance: Double
>
>         mutating func deposit(amount: Double) {
>             balance += amount
>         }
>
>         mutating func withdraw(amount: Double) {
>             balance -= amount
>         }
>     }

### Question 9

Given this bit of code (which incorporates any fixes you made in Question 8):

```swift
var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)
```

What will the value of `joeAccount.balance` be after the above code runs? What about the value of `joeOtherAccount.balance`? Why?

> The balance of `joeAccount.balance` will be 50.0, since `withdrawn(50.0)` was called. `joeOtherAccount` will still be 100.0, though. Both variables are value types, so when `joeAccount` is assigned to `joeOtherAccount`, a _copy_ is created, and calling a mutating method on `joeAccount` does not affect the properties of `joeOtherAccount`.

### Question 10

Here's a class that can track songs in a music library:

```swift
class MusicLibrary {
    var tracks: [String]

    init() {
        tracks = []
    }

    func addTrack(track: String) {
        tracks.append(track)
    }
}
```

Given this bit of code that uses `MusicLibrary`:

```swift
let library1 = MusicLibrary()
library1.addTrack("Michelle")
library1.addTrack("Voodoo Child")
let library2 = library1
library2.addTrack("Come As You Are")
```

After this code runs, what are the contents of `library1.tracks`? What about the contents of `library2.tracks`? Why?

> The contents of both `library1.tracks` and `library2.tracks` are `["Michelle", "Voodoo Child", "Come As You Are"]`. `addTrack(_:)` adds the string passed to it to `tracks`. `library1` and `library2` are reference types, so they both point to the same object in memory. `library1.tracks` and `library2.tracks` are the same array, so changes to either `tracks` property are reflected in both objects.

<a href='https://learn.co/lessons/ClassesVsStructs' data-visibility='hidden'>View this lesson on Learn.co</a>
