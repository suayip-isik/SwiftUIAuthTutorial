//
//  SettingRowView.swift
//  SwiftUIAuthTutorial
//
//  Created by Şuayip Işık on 27.06.2024.
//

import SwiftUI

struct SettingRowView: View {
    let imageName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack(spacing: 12)  {
            
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            
            Text(title)
                .font(.subheadline)
                .foregroundStyle(.black)
            
        }
    }
}

#Preview {
    SettingRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
}
