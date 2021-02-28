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

                           OrderListView.init(orders: viewModel.orders)
                                .padding(Constants.padding)
                        }

                    }                    
                )
        }
    }
    
}

private extension HomeView {
    
    var shareView: some View {
       
        VStack(alignment: .leading) {
            Text(viewModel.sharing?.title ?? "")
                .font(.custom(Constants.AppFont.mediumFont, size: 14))
                .foregroundColor(.darkBlack)
                .padding(.bottom, 4)

            Text(viewModel.sharing?.description ?? "")
                .font(.custom(Constants.AppFont.regularFont, size: 13))
                .foregroundColor(.warmGrey)
                .padding(.bottom, Constants.padding)

            HStack() {
                Text(viewModel.sharing?.shareLink ?? "")
                    .font(.custom(Constants.AppFont.mediumFont, size: 14))
                    .foregroundColor(.dustyOrange)
                
                Spacer()
                
                Image.init(Constants.Images.whatsupShareIcon)
            }

        }
        .padding(.all, 12)
        .background(Color.defaultWhite)

    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
