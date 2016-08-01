# Classes & Structs

![](http://i.imgur.com/zWBjkea.jpg)  

> Success is not final, failure is not fatal: it is the courage to continue that counts. -[Winston Churchill](https://en.wikipedia.org/wiki/Winston_Churchill)
 

## Learning Objectives

* 


## Outline / Notes

* Considering the other lab will probably go into this topic pretty deeply.
* Maybe this reading serves as a quiz. Where at the bottom of the page we provide the answers. Or we just make it a playground lab. I leave that decision up to you!



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

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")
```

### Question-1
Will these three lines of code run? If not, which one is not valid? Why?

```swift
fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"
```

### Question-2




<a href='https://learn.co/lessons/ClassesVsStructs' data-visibility='hidden'>View this lesson on Learn.co</a>
