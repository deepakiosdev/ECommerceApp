//
//  TabBarView.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 26/02/21.
//

import SwiftUI

struct TabBarView: View {

    @State var selected = 0
    
    var body: some View {

        ZStack {
            TabView(selection: $selected) {
                HomeView()
                    .tabItem {
                        Image(Constants.Images.iconTabbarHomeActive)
                        Text(Constants.Strings.home)
                }.tag(0)
                
                OrdersView()
                    .tabItem {
                        Image(Constants.Images.iconTabbarOrdersInactive)
                        Text(Constants.Strings.orders)
                }.tag(1)
                
                ProductsView()
                    .tabItem {
                        Image(Constants.Images.iconTabbarProductsInactive)
                        Text(Constants.Strings.products)
                }.tag(2)
                
                MarketingView()
                    .tabItem {
                        Image(Constants.Images.iconTabbarMarketingInactive)
                        Text(Constants.Strings.marketing)
                }.tag(3)
                
                AccountView()
                    .tabItem {
                        Image(Constants.Images.iconTabbarAccountInactive)
                        Text(Constants.Strings.account)
                }.tag(4)
                
            }
            .accentColor(.niceBlue)

        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)

    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
