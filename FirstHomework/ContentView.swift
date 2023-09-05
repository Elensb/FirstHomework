//
//  ContentView.swift
//  FirstHomework
//
//  Created by Elen Sobchuk on 03.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection: Int = 0
    var body: some View {
        TabView(selection:$tabSelection){
            
            FirstScreen(tabSelection: $tabSelection).tag(0).tabItem(
                {
                HStack{
                    Image(systemName: "figure.mixed.cardio")
                    Text("First Screen")
                }
            })
            SecondScreen().tag(1).tabItem({
                HStack{
                    Image(systemName: "figure.walk")
                    Text("Second Screen")
                }
            })
            ThirdScreen().tag(2).tabItem({
                HStack{
                    Image(systemName: "figure.run")
                    Text("Third Screen")
                }
            })
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
        }
}
