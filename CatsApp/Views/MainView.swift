//
//  MainView.swift
//  CatsApp
//
//  Created by user935646 on 13.03.24.
//

import SwiftUI

struct MainView: View {
    let apiUrl = URL(string: "https://api.thecatapi.com/v1/breeds")!
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                ListView(viewModel: ViewModel(), breedURL: apiUrl)
                .tabItem {
                    Label("Cat Encyclopedia", systemImage: "cat")
                }
                Text("This App is student work. It was made for learning purposes only. FH ST.Pölten - Interactive Technologies 2024")
                .tabItem {
                    Label("Info", systemImage: "info")
                }
            } // MARK: TabView End
            .accentColor(.black)
            .navigationBarTitle("Gaze in wonder...", displayMode: .inline)
                
        } // MARK: NavigationView End
        .navigationViewStyle(.stack)
    } // MARK: body End
}

#Preview {
    MainView()
}
