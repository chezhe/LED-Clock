//
//  Card.swift
//  Flip Clock
//
//  Created by 王亮 on 2019/9/15.
//  Copyright © 2019 王亮. All rights reserved.
//

import SwiftUI

struct Card: View {
    @State var now: String
    var format: String
    
    let timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()

    var body: some View {
        RoundedRectangle(cornerRadius: 10, style: .circular)
            .fill(Color.gray.opacity(0.1))
            .frame(width: 250, height: 250, alignment: Alignment.center)
            .overlay(
                HStack {
                    Text(now)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .font(Font.custom("LESLIE", size: 160))
                }
                .foregroundColor(.white),
                alignment: .center
            )
            .onReceive(timer) {_ in
                let dateformatter = DateFormatter()
                dateformatter.dateFormat = self.format
                
                self.now = dateformatter.string(from: Date())
            }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(now: "", format: "mm").previewLayout(.fixed(width: 250, height: 250))
    }
}
