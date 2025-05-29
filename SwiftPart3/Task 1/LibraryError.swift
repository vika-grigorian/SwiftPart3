//
//  LibraryError.swift
//  SwiftPart3
//
//  Created by Vika on 29.05.25.
//

import Foundation

enum LibraryError: Error {
    case itemNotFound(id: String)
    case itemNotBorrowable(id: String)
    case alreadyBorrowed(id: String)
}
