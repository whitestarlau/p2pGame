//
//  ContentView.swift
//  myIOSApp
//
//  Created by white lau on 2025/7/15.
//

import SwiftUI

struct ContentView: View {
    @Binding var message: String
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(message)
        }
        .padding()
    }
}

#Preview {
    ContentView(message: .constant("Preview Message"))
}
