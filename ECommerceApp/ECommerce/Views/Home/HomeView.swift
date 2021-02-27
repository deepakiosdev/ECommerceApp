//
//  HomeView.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 26/02/21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel()

    var body: some View {
        
        Color.white
             .ignoresSafeArea(.all)
              .overlay(
                  VStack(spacing: 20) {
                    Text("Home View")
              })
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
