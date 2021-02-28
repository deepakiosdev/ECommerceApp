//
//  TabBarView.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 26/02/21.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selected = 0
    @State private var badgeCount: Int = 3
    private var badgePosition: CGFloat = 2
    private var tabsCount: CGFloat = 5
    
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack(alignment: .bottomLeading) {
                
                tabBarView()
                
                let xoffSet = ((2 * self.badgePosition) - 1) * (geometry.size.width / ( 2 * self.tabsCount))
                
                // Badge View
                ZStack {
                    Circle()
                        .foregroundColor(.red)
                    
                    Text("\(self.badgeCount)")
                        .foregroundColor(.white)
                        .font(Font.system(size: 12))
                }
                .frame(width: 20, height: 20)
                .offset(x: xoffSet, y: -30)
                .opacity(self.badgeCount == 0 ? 0 : 1)
                
            }
        }
        
    }
}

private extension TabBarView {
    
    func tabBarView() -> some View {
        
        return
            
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
