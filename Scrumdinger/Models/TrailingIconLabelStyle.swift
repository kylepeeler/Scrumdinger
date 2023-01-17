//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Kyle Peeler on 1/16/23.
//

import SwiftUI

struct TrailingLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
           configuration.title
           configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingLabelStyle {
    static var trailingIcon: Self { Self() }
}
