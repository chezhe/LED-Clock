//
//  Second.swift
//  Flip Clock
//
//  Created by 王亮 on 2019/9/17.
//  Copyright © 2019 王亮. All rights reserved.
//

import SwiftUI

struct Second: View {
    @State var now: String

    let timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()

    var body: some View {
        RoundedRectangle(cornerRadius: 10, style: .circular)
            .fill(Color.gray.opacity(0.1))
            .frame(width: 100, height: 100, alignment: Alignment.center)
            .overlay(
                HStack {
                    Text(now)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                        .font(Font.custom("LESLIE", size: 60))
                }
                .padding()
                .foregroundColor(.white),
                alignment: .center
            )
            .onReceive(timer) {_ in
                let dateformatter = DateFormatter()
                dateformatter.dateFormat = "ss"
                
                self.now = dateformatter.string(from: Date())
            }
    }
}

struct Second_Previews: PreviewProvider {
    static var previews: some View {
        Second(now: "").previewLayout(.fixed(width: 100, height: 100))
    }
}
