//
//  TestBranch:2.swift
//  musicApp
//
//  Created by Artyom Ivanov on 12.03.2023.
//

import SwiftUI

struct TestBranch_2: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ZStack {
                Circle()
                    .foregroundColor(.green)
                Text("Circle")
            }
        }
    }
}

struct TestBranch_2_Previews: PreviewProvider {
    static var previews: some View {
        TestBranch_2()
    }
}
