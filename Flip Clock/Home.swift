//
//  ContentView.swift
//  Flip Clock
//
//  Created by 王亮 on 2019/9/15.
//  Copyright © 2019 王亮. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var showingSetting = false
    var body: some View {
        ZStack {
            Color.black
                 .edgesIgnoringSafeArea(.all)
            
            HStack{
                Card(now: "00", format: "HH")

                Text(":")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .font(Font.custom("LESLIE", size: 120))

                Card(now: "00", format: "mm")


                VStack{
//                    Button(action: { self.showingSetting.toggle() }) {
//                        Bell()
//                    }
                    
                    Second(now: "00")
                }.frame(height: 250, alignment: .bottom)
            }
        }.sheet(isPresented: $showingSetting) {
            Setting()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home().previewLayout(.fixed(width: 667, height: 375))
    }
}
