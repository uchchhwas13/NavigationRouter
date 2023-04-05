//
//  NavigationDemo.swift
//  NavigationRouter
//
//  Created by Uchchhwas Roy on 5/4/23.
//

import SwiftUI

struct NavigationViewDemo: View {
    @State private var path = [String]()
    @State private var page: ViewRouter = ViewRouter.home
    @State private var showSettings: Bool = false
    
    var body: some View {
        NavigationStack(path: $path) {
            List{
                NavigationLink("Simple string", value: "ABC")

                Button("Navigate to XYZ") {
                    path.append("XYZ")
                }
            }
            .navigationDestination(for: String.self) { string in
                VStack{
                    Text(string)
                        .foregroundColor(.red)
                    Button("Navigate to XYZ") {
                        path.append("XYZ")
                    }
                    Button("Pop to root") {
                        path.removeAll()
                    }
                }
            }
        }
    }
}

struct NavigationViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewDemo()
    }
}
