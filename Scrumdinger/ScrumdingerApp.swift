//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Kyle Peeler on 1/15/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
