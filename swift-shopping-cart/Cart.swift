//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item] = []
    
    func totalPriceInCents()->Int {
       var totalCostForItems = Int()
        
        for item in items {
            totalCostForItems += item.priceInCents
        }
        return totalCostForItems
    }
    
    func add (item:Item) {
        items.append(item)
    }
    
    func remove(item:Item){
        for (index, value) in items.enumerated() {
            if value == item {
            items.remove (at: index)
            }
        }
    }
    
    func items(withName name:String) -> [Item] {
        var collectedNames = [Item]()
        
        for item in items {
            if item.name == name {
                collectedNames.append(item)
            }
        }
        return collectedNames
    }
    
    func items(withMinPrice price:Int) -> [Item] {
        var collectedItems = [Item]()
        
        for item in items {
            if item.priceInCents >= price {
                collectedItems.append(item)
            }
        }
        return collectedItems
    }
    
    func items(withMaxPrice price:Int) -> [Item] {
        var collectedItems = [Item]()
        
        for item in items {
            if item.priceInCents <= price {
                collectedItems.append(item)
            }
        }
    return collectedItems
    }
}
