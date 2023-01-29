//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Kyle Peeler on 1/15/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
