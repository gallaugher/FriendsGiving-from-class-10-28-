// File: GuestDetailView.swift Project: FriendsGiving
// Created by: Prof. John Gallaugher on 10/28/24
// YouTube.com/profgallaugher  -  threads.net/john.gallaugher

import SwiftUI
import SwiftData

struct GuestDetailView: View {
    @State var guest: Guest
    @State private var name: String = ""
    @State private var item: String = ""
    @State private var notes: String = ""
    
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack (alignment: .leading) {
            TextField("name", text: $name)
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .padding(.bottom)
            
            Text("is bringing:")
                .bold()
            TextField("item", text: $item)
                .textFieldStyle(.roundedBorder)
            
            Text("notes:")
                .bold()
            TextField("notes", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
        }
        .padding()
        .onAppear {
            // Move data from guest to our local vars
            name = guest.name
            item = guest.item
            notes = guest.notes
        }
    }
}

#Preview {
    GuestDetailView(guest: Guest(name: "Lady Gaga", item: "Pokerface Punch", notes: "Non-alcoholic"))
        .modelContainer(for: Guest.self, inMemory: true)
}
