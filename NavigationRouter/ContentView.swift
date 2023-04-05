//
//  ContentView.swift
//  NavigationRouter
//
//  Created by Uchchhwas Roy on 4/4/23.
//

import SwiftUI
enum ViewRouter {
    case home
    case friends
    case images
    
    func next() -> ViewRouter {
           switch self {
           case .home: return .friends
           case .friends: return .images
           case .images: return self
           }
       }
       
       func previous() -> ViewRouter {
           switch self {
           case .home: return self
           case .friends: return .home
           case .images: return .friends
           }
       }
}

struct ContentView: View {
    
    @State private var page: ViewRouter = ViewRouter.home
    @State private var showSettings: Bool = false
    
    var body: some View {
        
        VStack {
            switch page {
            case .home:
                HomeView(page: $page, $showSettings)
            case .friends:
                FriendsView(page: $page, $showSettings)
            case .images:
                ImagesView(page: $page, $showSettings)
            }
        }
        .sheet(isPresented: $showSettings, content: {
            SettingsView(page: $page)
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
