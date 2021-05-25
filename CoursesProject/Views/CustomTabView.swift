//
//  CustomTabView.swift
//  CoursesProject
//
//  Created by Mac on 25/05/2021.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var selectedTab: String
    
    
    var body: some View {
        HStack(spacing: 0){
            ForEach(tabs, id: \.self){ image in
                
                TabButtonView(image: image, selectedTab: $selectedTab)
                
                if image != tabs.last{
                    
                    Spacer(minLength: 0)
                }
            }
        }
        .padding(.vertical, 11)
        .padding(.horizontal, 25)
        .background(Color.white)
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.5), radius: 5)
        .padding(.horizontal)
    }
}
//TabViews

struct EmailContentView: View{
    var body: some View{
        VStack{
            Text("Email")
        }
    }
}
struct OrganizeContentView: View{
    var body: some View{
        VStack{
            Text("Organize")
        }
    }
}
struct SettingsContentView: View{
    var body: some View{
        VStack{
            Text("Settings")
        }
    }
}

var tabs = ["home", "mail", "organize", "more"]

