//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Karthik Reddy on 28/04/24.
//

import SwiftUI

struct ContentView: View {
    var dataArray: [[String: String]] =
    [
        ["id":"1","name":"c"],
        ["id":"2","name":"java"],
        ["id":"3","name":"python"]
    ]
    var body: some View {
        List {
            ForEach(0..<self.dataArray.count, id: \.self) { index in
                HStack {
                    Text(self.dataArray[index]["name"] ?? "")
                    Spacer()
                    Button("Button") {
                        print("clicked \(index)")
                    }.background(Color.green)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
