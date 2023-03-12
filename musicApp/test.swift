//
//  test.swift
//  musicApp
//
//  Created by Artyom Ivanov on 12.03.2023.
//

import SwiftUI

struct test: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.blue)
            Text("кусок счастья 2")
                .foregroundColor(.black)
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
