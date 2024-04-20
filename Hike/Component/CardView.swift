//
//  CardView.swift
//  Hike
//
//  Created by Esraa Eid on 19/04/2024.
//

import SwiftUI

struct CardView: View {
    //MARK: Properties
    
    //MARK: Functions
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                //MARK: Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                                               startPoint: .top,
                                               endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button {
                            //Action: show a sheet
                            print("Button pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and family")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                //MARK: Main Content
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [.customIndigoMedium,
                                                    .customSalmonLight],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                    .scaledToFit()
                }
                
                //MARK: Footer
                Button {
                    //Action: Generate a random number
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium],
                                                        startPoint: .top,
                                                        endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
             
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}