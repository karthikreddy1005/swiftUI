//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Karthik Reddy on 28/04/24.
//

import SwiftUI

struct ContentView: View {
//    var dataArray: [[String: String]] =
//    [
//        ["id":"1","name":"c"],
//        ["id":"2","name":"java"],
//        ["id":"3","name":"python"]
//    ]
//    var body: some View {
//        List {
//            ForEach(0..<self.dataArray.count, id: \.self) { index in
//                HStack {
//                    Text(self.dataArray[index]["name"] ?? "")
//                    Spacer()
//                    Button("Button") {
//                        print("clicked \(index)")
//                    }.background(Color.green)
//                        .foregroundColor(.white)
//                }
//            }
//        }
//    }
    var body: some View {
            NavigationView {
                ParentView()
            }
        }
}

struct ParentView: View {
    var body: some View {
        VStack {
            NavigationLink(
                destination: ChildView(),
                label: {
                    Text("Navigate")
                })
        }
    }
}

struct ChildView: View {
    
    @State var stateValue: Int = 1
    let constantValue: UInt32 = arc4random() % 1000
    
    var body: some View {
        VStack {
            Text("ID \(constantValue); State \(stateValue)")
            Button(
                action: { stateValue += 1 },
                label: { Text("Increment") }
            )
        }
    }
}

#Preview {
    ContentView()
}
