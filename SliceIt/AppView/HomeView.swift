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
            Text("Home View")
                .bold()
            
            Button {
                appCoordinator.path.append(AppRoute.partyplaner)
            } label: {
                Image(systemName: "plus")
                Text("Add New Plan")
            
            }.padding()
                .foregroundStyle(.white)
                .background(Capsule()
                    .fill(.blue))


        }
        
        
    }
}

#Preview {
    HomeView(appCoordinator: AppCoordinator())
}
