//
//  MenuItemDetailsView.swift
//  meta-advanced-programming-in-swift
//
//  Created by Nguyễn Thanh Bình on 28/05/2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem?
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 200)
            Text("\(self.menuItem?.price ?? 0)")
        }
        .navigationTitle(self.menuItem?.title ?? "")
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView()
    }
}
