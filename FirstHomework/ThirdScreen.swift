//
//  ThirdScreen.swift
//  FirstHomework
//
//  Created by Elen Sobchuk on 03.09.2023.
//

import SwiftUI
import UIKit

struct MyActivityIndicatorView:UIViewRepresentable{
    typealias UIViewType = UIActivityIndicatorView
    var isLoading:Bool
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .large)
    }
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isLoading ? uiView.startAnimating():uiView.stopAnimating()
    }
}

struct ThirdScreen: View {
    @State var buttonToggle:Bool = false
    var body: some View {
        VStack{
            MyActivityIndicatorView(isLoading: buttonToggle)
            Button{
                self.buttonToggle.toggle()
            } label:{
                Text("Load modal view")
            }.sheet(isPresented: $buttonToggle) {
                Text("This homework was made by Sochuk Elena").font(.system(size:20))}
        }
    }
}
    


struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
