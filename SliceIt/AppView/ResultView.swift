//
//  ResultView.swift
//  SliceIt
//
//  Created by Macbook Pro on 24/11/26.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var appCoordinator: AppCoordinator
    var body: some View {
        Text("Result View")
            .bold()
        
        Button {
            appCoordinator.path = NavigationPath()
        } label: {
            Text("Save My Plan")
        }.padding()
            .foregroundStyle(.white)
            .background(Capsule()
                .fill(.blue))

    }
}

#Preview {
    ResultView(appCoordinator: AppCoordinator())
}
