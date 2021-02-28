//
//  SharingView.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import SwiftUI

struct SharingView: View {
    
    let sharing: Sharing?

    var body: some View {
        
        VStack(alignment: .leading) {
            Text(sharing?.title ?? "")
                .font(.custom(Constants.AppFont.mediumFont, size: 14))
                .foregroundColor(Color.darkBlack)
                .padding(.bottom, 4)

            Text(sharing?.description ?? "")
                .font(.custom(Constants.AppFont.regularFont, size: 13))
                .foregroundColor(Color.warmGrey)
                .padding(.bottom, 16)

            HStack() {
                Text(sharing?.shareLink ?? "")
                    .font(.custom(Constants.AppFont.mediumFont, size: 14))
                    .foregroundColor(Color.dustyOrange)
                
                Spacer()
                
                Button(action: {
                    print("Share Button pressed")
                }) {
                    Image.init(Constants.Images.whatsupShareIcon)
                }
            }

        }
        .padding(.all, 12)
        .background(Color.defaultWhite)
        .cornerRadius(6)

    }
}

struct SharingView_Previews: PreviewProvider {
    static var previews: some View {
        SharingView(sharing: nil)
    }
}
