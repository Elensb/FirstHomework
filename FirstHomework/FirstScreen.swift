//
//  FirstScreen.swift
//  FirstHomework
//
//  Created by Elen Sobchuk on 03.09.2023.
//

import SwiftUI

struct FirstScreen: View {
    @Binding var tabSelection: Int
    @StateObject var SportsVM:SportsViewModel = .init()
    var body: some View {
        NavigationView{
            
            VStack{
                Button(
                    action:{
                    tabSelection = 1},
                    label:{
                    Text("List")})
                .font(.largeTitle)
                //.fontWeight(.thin)
                .foregroundColor(Color.black)
                .padding()
                
                NavigationLink(
                    destination:{
                    ListScreenDetail(sport: SportsVM.sports[3])},
                    label: {
                        Text(SportsVM.sports[3].description)
                            .font(.largeTitle)
                        .fontWeight(.thin)
                        .foregroundColor(Color.red)
                        .padding()})
                
            }
            
        }
    }
}
                
                       
struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(tabSelection: .constant(0))
    }
}
