//
//  FriendsView.swift
//  NavigationRouter
//
//  Created by Uchchhwas Roy on 4/4/23.
//

import SwiftUI

struct FriendsView: View {
    @Binding var page: ViewRouter
    // 1
    @Binding var showSettings: Bool
    
    init(page: Binding<ViewRouter>, _ settings: Binding<Bool>) {
        self._page = page
        self._showSettings = settings
    }
    
    var body: some View {
        Text("FriendsView.swift")
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

//struct FriendsView_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendsView()
//    }
//}
