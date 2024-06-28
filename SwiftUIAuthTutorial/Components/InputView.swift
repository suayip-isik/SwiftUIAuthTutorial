//
//  InputView.swift
//  SwiftUIAuthTutorial
//
//  Created by Şuayip Işık on 22.06.2024.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let pleaseHolder: String
    var isSecuredField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundStyle(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecuredField {
                SecureField(pleaseHolder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(pleaseHolder, text: $text)
                    .font(.system(size: 14))
            }
            
            Divider()
        }
    }
}

#Preview {
    InputView(text: .constant(""), title: "Email Adress", pleaseHolder: "name@example.com")
}
