//
//  PartyPlannerView.swift
//  SliceIt
//
//  Created by Macbook Pro on 24/11/26.
//

import SwiftUI

struct PartyPlannerView: View {
    @ObservedObject var appCoordinator: AppCoordinator
    var body: some View {
        Text("Party planner View")
            .bold()
        
        Button {
            appCoordinator.path.append(AppRoute.result)
        } label: {
            Text("See My Pizza Plan")
        }.padding()
            .foregroundStyle(.white)
            .background(Capsule()
                .fill(.blue))

    }
}

#Preview {
    PartyPlannerView(appCoordinator: AppCoordinator())
}
