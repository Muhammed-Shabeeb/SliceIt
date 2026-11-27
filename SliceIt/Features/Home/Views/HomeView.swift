//
//  ContentView.swift
//  SliceIt
//
//  Created by Macbook Pro on 24/11/26.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var appCoordinator: AppCoordinator
    
    var body: some View {
        VStack {
            HeaderView(title: "Pizza Party \nPlanner")
            Spacer()
            
            Button {
                appCoordinator.path.append(AppRoute.partyplaner)
            } label: {
                Image(systemName: "plus")
                Text("Add New Plan")
            
            }.padding()
                .foregroundStyle(.white)
                .background(Capsule()
                    .fill(.blue))

        
        }.padding()
        .background(.orange)
        
        
    }
}

#Preview {
    HomeView(appCoordinator: AppCoordinator())
}
