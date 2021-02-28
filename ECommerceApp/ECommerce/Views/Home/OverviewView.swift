//
//  OverviewView.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import SwiftUI

struct OverviewView: View {
    
    let overview: Overview?
    
    var body: some View {
       
        VStack(alignment: .leading) {
            
            HStack() {
                Text(Constants.Strings.overview)
                    .font(.custom(Constants.AppFont.mediumFont, size: 16))
                    .foregroundColor(Color.darkBlack)
                
                Spacer()
                
                Button(action: {
                    print("Week button pressed")
                }) {
                    
                    Text(Constants.Strings.lastWeek)
                        .font(.custom(Constants.AppFont.regularFont, size: 14))
                        .foregroundColor(Color.warmGrey)
                    
                    Image.init(Constants.Images.downArrow)
                }
            }
            .padding(.bottom, 12)
            
            
            let columns: [GridItem] = Array(repeating: .init(.adaptive(minimum: 95, maximum: 200)), count: 2)

                LazyVGrid(columns: columns, alignment: .center) {

                    if let overviews = self.overview?.overviewList {
                        ForEach(overviews, content: OverviewCell.init(overViewItem: ))
                    }
                }

        }
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView(overview: nil)
    }
}
