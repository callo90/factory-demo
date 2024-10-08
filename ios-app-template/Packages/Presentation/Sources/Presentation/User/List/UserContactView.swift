//
//  UserContactView.swift
//  
//
//  Created by Carlos López on 26/07/24.
//

import SwiftUI
import Domain
import Kingfisher

struct UserContactView: View {
    var user: User
    
    var body: some View {
        HStack {
            KFImage(URL(string: user.pictureURL))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(.circle)
            VStack(alignment: .leading) {
                Text("\(user.firstName) \(user.lastName)")
                    .font(.system(size: 16))
                Text("@\(user.username)")
                    .font(.system(size: 12))
            }
            Spacer()
        }
    }
}

#Preview {
    UserContactView(user: User.fake())
}
