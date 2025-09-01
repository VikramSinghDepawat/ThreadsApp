//
//  FollowState.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 01/09/25.
//

import Foundation

enum FollowState {
    case following
    case follow
    
    var title: String {
        switch self {
        case .following:
            return "Following"
        case .follow:
            return "Follow"
        }
    }
}
