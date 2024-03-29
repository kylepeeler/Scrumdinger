//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Kyle Peeler on 1/17/23.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($scrums) { $scrum in
                    NavigationLink(destination: DetailView(scrum: $scrum)) {
                        CardView(scrum: scrum)
                    }.listRowBackground(scrum.theme.mainColor)
                        
                }
            }.navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }.accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ScrumsView(scrums: .constant(DailyScrum.sampleData))
        }
    }
}
