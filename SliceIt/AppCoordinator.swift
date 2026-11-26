//
//  AppCoordinator.swift
//  SliceIt
//
//  Created by Macbook Pro on 24/11/26.
//

import SwiftUI
import Combine


enum AppRoute{
    case partyplaner
    case result
}

class AppCoordinator: ObservableObject{
    @Published var path = NavigationPath()
    
}
