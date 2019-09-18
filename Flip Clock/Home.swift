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
                HStack{
                    Card(now: "00", format: "HH")
                    
                    Text(":")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .font(Font.custom("LESLIE", size: 120))
                    
                    Card(now: "00", format: "mm")
                        

                    VStack{
                        NavigationLink(
                            destination: Setting()
                        ) {
                            Bell()
                        }.navigationBarTitle(Text("Landmarks"))
                        
                        Second(now: "00")
                    }
                }
                .padding(),
                alignment: .center
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home().previewLayout(.fixed(width: 667, height: 375))
    }
}
