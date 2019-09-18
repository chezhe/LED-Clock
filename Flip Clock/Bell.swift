//
//  Bell.swift
//  Flip Clock
//
//  Created by 王亮 on 2019/9/18.
//  Copyright © 2019 王亮. All rights reserved.
//

import SwiftUI

struct Bell: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5, style: .circular)
        .fill(Color.gray.opacity(0.1))
        .frame(width: 90, height: 90, alignment: Alignment.center)
        .padding(.horizontal, 15)
        .padding(.bottom, 15)
        .overlay(
            HStack {
                Image("bell")
            }
            .padding()
            .foregroundColor(.red),
            alignment: .center
        )
    }
}

struct Bell_Previews: PreviewProvider {
    static var previews: some View {
        Bell()
    }
}
