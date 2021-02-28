//
//  HeaderView.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        GeometryReader { geometry in
            
            Color.niceBlue
                .ignoresSafeArea()
                .overlay(
                    headerBackgroundView()
                    .frame(width: geometry.size.width, height: Constants.headerHeight)
                    
                )
        }
    }
}

private extension HeaderView {
    
    func headerBackgroundView() -> some View {
        
        return
            
            HStack(alignment: .top) {
                Text(Constants.Strings.tagLine)
                    .font(.custom(Constants.AppFont.mediumFont, size: 18))
                    .foregroundColor(Color.defaultWhite)
                
                
                Image.init(Constants.Images.iconVerify)
                
                Spacer()
                
            }
            .padding(.leading, Constants.padding)
            .padding(.top, Constants.padding)

    }
    
    
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
