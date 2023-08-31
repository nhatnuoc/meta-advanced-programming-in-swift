//
//  MenuItemsView.swift
//  meta-advanced-programming-in-swift
//
//  Created by Nguyễn Thanh Bình on 28/05/2023.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var isShowOptions = false
    var viewModel: MenuItemsViewModel = MenuItemsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(content: {
                MenuCategoryView(title: "Food", menuItems: self.viewModel.foodMenuItems)
                MenuCategoryView(title: "Drink", menuItems: self.viewModel.drinkMenuItems)
                MenuCategoryView(title: "Desserts", menuItems: self.viewModel.dessertMenuItems)
            }).navigationTitle(Text("Menu"))
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            self.isShowOptions.toggle()
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                        }.sheet(isPresented: $isShowOptions) {
                            MenuItemsOptionView()
                        }

                    }
                }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}

struct MenuItemCell: View {
    let item: MenuItem
    
    var body: some View {
        NavigationLink {
            MenuItemDetailsView(menuItem: item)
        } label: {
            VStack(spacing: 12, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Text(item.title)
            }).frame(maxWidth: .infinity)
        }

    }
}

struct MenuCategoryView: View {
    let title: String
    let menuItems: [MenuItem]
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text(self.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.bold)
                .font(Font.system(size: 30))
                .padding(16)
        }
        LazyVGrid(columns: [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]) {
            ForEach(self.menuItems, id: \.id) { item in
                MenuItemCell(item: item)
            }
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}
