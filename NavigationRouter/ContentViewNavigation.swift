//
//  CustomViewNavigation.swift
//  NavigationRouter
//
//  Created by Uchchhwas Roy on 5/4/23.
//

import SwiftUI

import SwiftUI

struct ContentViewNavigation: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("People") {
                    ForEach(Person.examples) { person in
                        NavigationLink(value: person ) {
                            
                            VStack(alignment: .leading) {
                                Text(person.name)
                                
                                Text(person.age, format: .number)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
                Section("Articles") {
                    ForEach(Article.examples) { article in
                        NavigationLink(value: article) {
                            VStack(alignment: .leading){
                                Text(article.title)
                                    .font(.headline)
                                Text(article.author)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                
            }.navigationDestination(for: Person.self) { person in
                //CreateToDoView()
            }
            .navigationDestination(for: Article.self) { article in
                Text(article.title)
                    .font(.headline)
            }
        }
    }
}

struct ContentViewNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNavigation()
    }
}


