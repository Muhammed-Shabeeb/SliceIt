//
//  RootView.swift
//  SliceIt
//
//  Created by Macbook Pro on 24/11/26.
//

import SwiftUI

struct RootView: View{
    
    @StateObject var appCoordinator = AppCoordinator()
    
    var body: some View{
        NavigationStack(path: $appCoordinator.path) {
            HomeView(appCoordinator: appCoordinator)
                .navigationDestination(for: AppRoute.self) { route in
                    switch route{
                    case .partyplaner:
                        PartyPlannerView(appCoordinator: appCoordinator)
                    case .result:
                        ResultView(appCoordinator: appCoordinator)
                    }
                }
        }
    }
    
}

#Preview {
    RootView(appCoordinator: AppCoordinator())
}

