//
//  ContentView.swift
//  Restart
//
//  Created by Jordan Isac on 09/05/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    var body: some View {
        ZStack{
            if isOnBoardingViewActive {
                OnBoardingView()
            }else{
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
