import SwiftUI
import PhotosUI

struct SettingsScreen: View {
    @State private var avatarImage: Image?
    @State private var photoPickerItem: PhotosPickerItem?
    
    @AppStorage(UserDefaultsKeys.appearanceTheme)
    private var appearance: AppearanceTheme = .system
    
    @AppStorage(UserDefaultsKeys.username)
    private var username: String = ""
    
    @AppStorage(UserDefaultsKeys.itemsPerPage)
    private var itemsPerPage: Int = 20
    
    @AppStorage(UserDefaultsKeys.notificationsEnabled)
    private var notificationsEnabled: Bool = true
    
    @AppStorage(UserDefaultsKeys.avatarImageData)
    private var avatarImageData: Data?
    
    
    var body: some View {
        NavigationStack {
            
            Form {
                HStack {
                    Spacer()
                    PhotosPicker(selection: $photoPickerItem, matching: .images) {
                        let backgroundColor: Color = appearance == .light ? .gray : .white
                        let foregroundColor: Color = appearance == .light ? .white : .black
                        
                        (avatarImage ?? Image(systemName: "person.crop.circle.fill"))
                            .resizable()
                            .scaledToFill()
                            .foregroundStyle(foregroundColor)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding(2)
                            .background(backgroundColor)
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                .listRowBackground(Color.clear)
                .onAppear {
                    if let avatarImageData,                            //loading a saved avatar
                       let uiImage = UIImage(data: avatarImageData) {
                        avatarImage = Image(uiImage: uiImage)
                    }
                }
                .onChange(of: photoPickerItem) { _, _ in               //save the avatar
                    Task {
                        if let photoPickerItem,
                           let data = try? await photoPickerItem.loadTransferable(type: Data.self),
                           let image = UIImage(data: data) {
                            avatarImageData = data
                            avatarImage = Image(uiImage: image)
                        }
                    }
                }
                
                Section("Account") {
                    TextField("Username", text: $username)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                }
                
                Section {
                    Picker("Appearance", selection: $appearance) {
                        ForEach(AppearanceTheme.allCases) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                } header: {
                    Text("Appearance")
                } footer: {
                    Text("Overrides the system appearance to always use Light.")
                }
                
                Section("Preference") {
                    Stepper("Items per page: \(itemsPerPage)", value: $itemsPerPage, in: 10...100, step: 5)
                    Toggle("Enable notification", isOn: $notificationsEnabled)
                }
                
                Section {
                    Button(role: .destructive) {
                        resetDefaults()
                    } label: {
                        Text("Reset to Defaults")
                    }
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Settings")
        }
    }
    
    private func resetDefaults() {
        appearance = .system
        username = ""
        itemsPerPage = 20
        notificationsEnabled = true
        avatarImageData = nil
        avatarImage = nil
    }
}

extension View {
    func setAppearanceTheme() -> some View {
        modifier(AppearanceThemeViewModifier())
    }
}

struct AvatatPickerView: View {
    var image: Image?
    var appearance: AppearanceTheme
    
    var body: some View {
        
    }
}

#Preview {
    SettingsScreen()
}
