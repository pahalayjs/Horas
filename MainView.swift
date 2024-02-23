//
//  MainView.swift
//  Horas!
//
//  Created by Pahala Sihombing on 23/02/24.
//

import Foundation
import SwiftUI
import PencilKit

struct MainView: View {

//    @Binding var canvas: PKCanvasView
//    @Binding var isDraw: Bool
//    @Binding var type: PKInkingTool.InkType
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 32.0) {
                Spacer()
//                Text("MAIN \nSCREEN")
//                    .fontWeight(.bold)
//                    .font(.title)
//                    .multilineTextAlignment(.center)
//                    .padding(.top, 16.0)
//                
//                Text("HORAS!")
//                    .font(.system(size: 200, weight: .bold))
//                    .shadow(color: .red, radius: 2)
//                Image("HORAS!")
//                Image("BS-Horas")
//                
//                Text("Do you need someone\n to remind you to eat \ngreens & fruits?")
//                    .font(.title3)
//                    .multilineTextAlignment(.center)
                Image("teslogo")
                Spacer()
                NavigationLink {
                    InfoMenuView()
                } label: {
                    MenuButton(name: "Menu info ")
                }
                NavigationLink {
                    ScriptMenuView()
                } label: {
                    MenuButton(name: "Menu kamus aksara")
                }
                NavigationLink {
                    GenerateMenuView()
                } label: {
                    MenuButton(name: "Menu generate huruf")
                }
            }
//            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()

            .background(
//                VStack{
                    Image("BGGorga")
//                }
            )
        }
    }
}

struct MenuButton: View {
    var name: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .fill(.white)
                .shadow(color: .black, radius: 3)
                .frame(width: 400, height: 100)
                .padding(1)
            Text(name)
                .font(.system(size: 30, weight: .bold))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
//        MainView(canvas: .constant(PKCanvasView()), isDraw: .constant(true), type: .constant(PKInkingTool.InkType.pen))
        MainView()
    }
}
