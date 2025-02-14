//
//  Dex3WidgetBundle.swift
//  Dex3Widget
//
//  Created by Jim Rainville on 2/14/25.
//

import WidgetKit
import SwiftUI

@main
struct Dex3WidgetBundle: WidgetBundle {
    var body: some Widget {
        Dex3Widget()
        Dex3WidgetControl()
        Dex3WidgetLiveActivity()
    }
}
