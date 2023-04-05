//
//  ImagesView.swift
//  NavigationRouter
//
//  Created by Uchchhwas Roy on 4/4/23.
//

import SwiftUI

struct ImagesView: View, Equatable {
    static func == (lhs: ImagesView, rhs: ImagesView) -> Bool {
        return true
    }
    
    @Binding var page: ViewRouter
    
    @Binding var showSettings: Bool
    
    init(page: Binding<ViewRouter>, _ settings: Binding<Bool>) {
        self._page = page
        self._showSettings = settings
    }
    
    var body: some View {
        Text("ImagesView.swift")
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
