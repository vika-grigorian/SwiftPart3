//
//  Item.swift
//  SwiftPart3
//
//  Created by Vika on 29.05.25.
//

import Foundation

class Item {
    let id: String
    let title: String
    let author: String
    
    init(id: String, title: String, author: String) {
        self.id = id
        self.title = title
        self.author = author
    }
}

class Book: Item, Borrowable {
    var borrowDate: Date?
    var returnDate: Date?
    var isBorrowed: Bool
    
    init(id: String, title: String, author: String, borrowDate: Date? = nil, returnDate: Date? = nil, isBorrowed: Bool = false) {
        self.borrowDate = borrowDate
        self.returnDate = returnDate
        self.isBorrowed = isBorrowed
        super.init(id: id, title: title, author: author)
    }
    
    func checkIn() {
        borrowDate = nil
        returnDate = nil
        isBorrowed = false
    }
}
