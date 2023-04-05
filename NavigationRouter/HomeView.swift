//
//  HomeView.swift
//  NavigationRouter
//
//  Created by Uchchhwas Roy on 4/4/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    
    public var val = 0
    @Binding var page: ViewRouter

    @Binding var showSettings: Bool

    init(page: Binding<ViewRouter>, _ settings: Binding<Bool>) {
        self._page = page
        self._showSettings = settings
    }

    var body: some View {
        Text("HomeView.swift")
        Button("Next page") {
            page = ViewRouter.next(page)()
        }
        Button("Previous page") {
            page = ViewRouter.previous(page)()
        }
        
        Button("Set settings") {
            showSettings = true
        }
        //showSettings = true
        
    }
}


//extension HomeView: Hashable {
//
//    static func == (lhs: HomeView, rhs: HomeView) -> Bool {
//        return lhs.val == rhs.val
//    }
//}
