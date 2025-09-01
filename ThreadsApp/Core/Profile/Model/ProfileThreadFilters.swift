//
//  ProfileThreadFilters.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 01/09/25.
//

import Foundation

enum ProfileThreadFilters: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"
        }
    }
    
    var id: Int { self.rawValue }
}
