//
//  HomeScreen.swift
//  CoursesProject
//
//  Created by Mac on 25/05/2021.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var selectedTab: String = "home"
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            
            TabView(selection: $selectedTab){
                HomeContentView()
                    .tag("home")
                
                EmailContentView()
                    .tag("mail")
                
                OrganizeContentView()
                    .tag("organize")
                
                SettingsContentView()
                    .tag("more")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea(.all, edges: .bottom)
            .animation(.easeInOut)
            .padding(.bottom, 40)
            
//            HomeContentView()
            
            CustomTabView(selectedTab: $selectedTab)
//                .padding(.bottom, edge?.bottom == 0 ? 20 : 0)
                .padding(.bottom, 20)
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all, edges: .all))
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
