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
        GeometryReader { geometry in
            
            Color.whiteBackground
                .ignoresSafeArea(edges: .top)
                .overlay(
                    VStack() {
                        
                        ZStack() {
                            HeaderView()
                                .background(Color.niceBlue)
                                .frame(width: geometry.size.width, height: Constants.headerHeight)


                            SharingView.init(sharing: viewModel.sharing)
                                .padding()
                                .offset(y: Constants.headerHeight/2 )

                        }
                        .offset(y: -Constants.headerHeight/2)
                        
                        
                        ScrollView() {
                            OverviewView.init(overview: viewModel.overview)
                                .padding(.leading, Constants.padding)
                                .padding(.trailing, Constants.padding)
                                .padding(.bottom, Constants.padding)

                            OrderListView.init(viewModel: viewModel)
                                .padding(Constants.padding)
                        }

                    }                    
                )
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
