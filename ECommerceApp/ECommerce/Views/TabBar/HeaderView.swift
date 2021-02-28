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
            
            VStack() {
                HStack() {
                    Text(Constants.Strings.tagLine)
                        .font(.custom(Constants.AppFont.mediumFont, size: 18))
                        .foregroundColor(Color.defaultWhite)
                    
                    Image.init(Constants.Images.iconVerify)
                }
                .padding(.leading, 16)
                .padding(.top, 8)
                // .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
            }
            .background(Color.niceBlue)
        }
    }    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
