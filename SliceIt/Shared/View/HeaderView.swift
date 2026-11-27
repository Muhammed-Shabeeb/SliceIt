//
//  HeaderView.swift
//  SliceIt
//
//  Created by Macbook Pro on 26/11/26.
//

import SwiftUI

struct HeaderView:View {
    var title: String
    var body: some View {
        HStack{
            Text(title)
                .foregroundStyle(.white)
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            Image(.coolPizza)
                .resizable()
                .frame(width: 58,height: 58)
            
        }
        
    }
}
