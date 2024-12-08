//
//  ContentView.swift
//  Tutorial
//
//  Created by Jared Davidson on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    var dismiss: () -> ()
    
    var body: some View {
        VStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .frame(
            width: 100,
            height: 500,
            alignment: .center
        )
        .foregroundStyle(Color.black)
        .background(Color.white)
    }
}
