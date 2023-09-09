//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 윤강록 on 2023/09/09.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
