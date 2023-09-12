//
//  ListScreen.swift
//  FirstHomework
//
//  Created by Elen Sobchuk on 03.09.2023.
//

import SwiftUI
struct Sport:Identifiable{
    let text:String
    let description:String
    let id:UUID = .init()
}
final class SportsViewModel: ObservableObject{
    @Published private(set) var sports = [
        Sport(text: "🤼‍♂️", description: "борьба"),
        Sport(text: "🏋🏼", description: "штанга"),
        Sport(text: "🚵🏻‍♀️", description: "велосипед"),
        Sport(text: "🏄🏿", description: "серф"),
        Sport(text: "🧘🏽‍♀️",  description: "йога"),
        Sport(text: "🥊",  description: "бокс")
    ]
}


struct ListScreen: View {
    @EnvironmentObject var SportsVM:SportsViewModel
    
    var body: some View {
                VStack{
                    List (SportsVM.sports){sport in
                        NavigationLink{
                            ListScreenDetail(sport: sport)}
                            label: {
                                Text(sport.description)}}
                }
            }
    }

struct ListScreenDetail: View {
    let sport:Sport
    var body: some View {
            VStack {
                Text(self.sport.text).font(.system(size: 200))
            }
            
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
