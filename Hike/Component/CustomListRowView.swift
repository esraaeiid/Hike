//
//  CustomListRowView.swift
//  Hike
//
//  Created by Esraa Eid on 21/04/2024.
//

import SwiftUI

struct CustomListRowView: View {
    //MARK: Properties
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String?
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if let rowContent = rowContent {
                Text(rowContent)
                    .foregroundColor(.primary)
                .fontWeight(.heavy)
            } else if let rowLinkLabel = rowLinkLabel,
                      let rowLinkDestination = rowLinkDestination,
            let url = URL(string: rowLinkDestination) {
                Link(rowLinkLabel,
                     destination: url)
                .foregroundColor(.pink)
                .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }

    }
}

#Preview {
    List{  
        CustomListRowView(rowLabel: "Designer",
                          rowIcon: "paintpalette",
                          rowContent: nil,
                          rowTintColor: .pink,
                          rowLinkLabel: "Credo Academy",
                          rowLinkDestination: "https://credo.academy")
    }
}
