//
//  ContentView.swift
//  Flip Clock
//
//  Created by 王亮 on 2019/9/15.
//  Copyright © 2019 王亮. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        Rectangle()
        .fill(Color.black)
        .scaledToFill()
        .overlay(
            VStack{
                Image("setting")
                
                HStack{
                    Card(now: "00", format: "HH")
                    
                    Text(":")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .font(Font.custom("LESLIE", size: 120))
                    
                    Card(now: "00", format: "mm")
                        
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 100, height: 200, alignment: .bottom)
                        .scaledToFill()
                        .padding(.horizontal, 10)
                        .overlay(
                            HStack {
                                Second(now: "00")
                            },
                            alignment: .bottom
                        )
                }
                .padding()
            },
            alignment: .center
        )

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home().previewLayout(.fixed(width: 667, height: 375))
    }
}
