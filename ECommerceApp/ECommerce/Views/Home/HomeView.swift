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
            .ignoresSafeArea(.all)
            .overlay(
                VStack() {
                    SharingView.init(sharing: viewModel.sharing)
                    .padding(.all, 16)
                   // .frame(width: geometry.size.width, height: geometry.size.height * 0.2)
                    ScrollView () {
                        OverviewView.init(overview: viewModel.overview)
                        //.padding(.all, 16)


                        OrderListView.init(orders: viewModel.orders)
                        //.padding(.all, 16)
                    }
                    .padding(.all, 16)

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
                .foregroundColor(Color.darkBlack)
                .padding(.bottom, 4)

            Text(viewModel.sharing?.description ?? "")
                .font(.custom(Constants.AppFont.regularFont, size: 13))
                .foregroundColor(Color.warmGrey)
                .padding(.bottom, 16)

            HStack() {
                Text(viewModel.sharing?.shareLink ?? "")
                    .font(.custom(Constants.AppFont.mediumFont, size: 14))
                    .foregroundColor(Color.orange)
                
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
