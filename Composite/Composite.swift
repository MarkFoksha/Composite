//
//  Composite.swift
//  Composite
//
//  Created by Марк Фокша on 11.05.2023.
//

import Foundation

protocol Composite {
    var name: String { get set}
    
    
    func showContent() -> Any
    func contentCount() -> Int
    func addComponent(c: Composite)
}

class File: Composite {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func addComponent(c: Composite) {
        print("Can not add a folder to the file")
    }
    
    func showContent() -> Any {
        name
    }
    
    func contentCount() -> Int {
        1
    }
    
}

class Folder: Composite {
    var name: String
    private var contentArray = [Composite]()
    
    init(name: String) {
        self.name = name
    }
    
    func showContent() -> Any {
        contentArray
    }
    
    func contentCount() -> Int {
        contentArray.count
    }
    
    func addComponent(c: Composite) {
        contentArray.append(c)
    }
    
    
}
