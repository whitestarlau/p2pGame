//
//  p2pGameApp.swift
//  p2pGame
//
//  Created by white lau on 2025/8/6.
//

import SwiftUI

@main
struct p2pGameApp: App {
    @State private var rustMessage = ""

    var body: some Scene {
        WindowGroup {
            ContentView(message: $rustMessage)
                .onAppear {
                    let rustString = hello_from_rust()
                    rustMessage = String(cString: rustString!)
                }
        }
    }
}

func hello() {
    let rustString = hello_from_rust()
    print(String(cString: rustString!))
}
