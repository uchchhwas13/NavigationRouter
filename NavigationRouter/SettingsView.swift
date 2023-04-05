//
//  SettingsView.swift
//  NavigationRouter
//
//  Created by Uchchhwas Roy on 4/4/23.
//

import SwiftUI

struct SettingsView: View {
    @Binding var page: ViewRouter
    
    init(page: Binding<ViewRouter>) {
        self._page = page
    }
    
    var body: some View {
        Text("SettingsView.swift")
        //page = ViewRouter.next(page)()
        //page = ViewRouter.previous(page)()
        
        
        //showSettings = true
        
    }
}

