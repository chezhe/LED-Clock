//
//  BellCard.swift
//  Flip Clock
//
//  Created by 王亮 on 2019/9/21.
//  Copyright © 2019 王亮. All rights reserved.
//

import SwiftUI

struct BellCard: View {
    @State var now: integer_t
    var unit: String
    
    var body: some View {
        VStack {
            Button(action: {
                self.now = self.now + 1
                if self.unit == "hour" && self.now > 23 {
                    self.now = 0
                }
                if self.unit == "minute" && self.now > 59 {
                    self.now = 0
                }
            }) {
                Image("plus")
                    .foregroundColor(.white)
                    .padding(10)
            }
            
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .fill(Color.gray.opacity(0.1))
                .frame(width: 120, height: 120, alignment: Alignment.center)
                .overlay(
                    HStack {
                        Text(String(now))
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                            .font(Font.custom("LESLIE", size: 80))
                    },
                    alignment: .center
            ).padding(.horizontal, 20)
         
            Button(action: {
                self.now = self.now - 1
                if self.unit == "hour" && self.now < 0 {
                    self.now = 23
                }
                if self.unit == "minute" && self.now < 0 {
                    self.now = 59
                }
            }) {
                Image("reduce")
                    .foregroundColor(.white)
                    .padding(10)
            }
        }
    }
}

struct BellCard_Previews: PreviewProvider {
    static var previews: some View {
        BellCard(now: 23, unit: "hour").previewLayout(.fixed(width: 250, height: 250))
    }
}
