//
//  Library.swift
//  SwiftPart3
//
//  Created by Vika on 29.05.25.
//

import Foundation

class Library {
    private var items: [String: Item] = [:]
    
    func addBook(_ book: Book) {
        items[book.id] = book
    }
    
    func borrowItem(by id: String) throws -> Item {
        guard let item = items[id] else {
            throw LibraryError.itemNotFound(id: id)
        }
        
        guard var borrowableItem = item as? Borrowable else {
            throw LibraryError.itemNotBorrowable(id: id)
        }
        
        guard !borrowableItem.isBorrowed else {
            throw LibraryError.alreadyBorrowed(id: id)
        }
        
        borrowableItem.isBorrowed = true
        borrowableItem.borrowDate = Date()
        
        let calendar = Calendar.current
        borrowableItem.returnDate = calendar.date(byAdding: .day, value: 14, to: Date())
        
        return item
    }
}
