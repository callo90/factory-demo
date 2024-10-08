//
//  UserDetailView.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import SwiftUI
import Domain
import Kingfisher

struct UserDetailView: View {
    var user: User
    
    var body: some View {
        VStack {
            HStack {
                KFImage(URL(string: user.pictureURL))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(.circle)
                VStack(alignment: .leading) {
                    Group {
                        Text("\(user.firstName) \(user.lastName)")
                        Text("@\(user.username)")
                        Text(user.email)
                        Text(user.gender)
                        Text(user.birthday)
                    }
                    .font(.system(size: 14))
                }
                Spacer()
            }
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}
