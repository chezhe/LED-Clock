//
//  Setting.swift
//  Flip Clock
//
//  Created by 王亮 on 2019/9/18.
//  Copyright © 2019 王亮. All rights reserved.
//

import SwiftUI

struct Setting: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack(spacing: 20) {
                    Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                        Image("close")
                            .padding(10)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                        Image("submit")
                            .padding(10)
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    BellCard(now: 22, unit: "hour")
                    
                    Text(":")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .font(Font.custom("LESLIE", size: 60))
                    
                    BellCard(now: 14, unit: "minute")
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting().previewLayout(.fixed(width: 667, height: 375))
    }
}
