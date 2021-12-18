//
//  ContentView.swift
//  AnimeAppV2
//
//  Created by Dewone Westerfield on 5/22/21.
//
import SwiftUI

//struct Notifications{
//    var onOff: String;
//    var isNotificationsOn = false;
//}

struct TurnOnNotificationsToggle:View{
    //@Binding var notification: Notifications;
    @State private var turnOnNotifications = true;
    var body: some View{
        HStack{
            //Text("Turn on Notifications? ");
            Toggle("Turn on Notifications? ",isOn: $turnOnNotifications).toggleStyle(SwitchToggleStyle(tint: .purple));
            
        }
    }
}
struct UserProfileDetail:View{
    var body: some View{
        
        VStack(alignment: .leading, spacing: 10){
            Text("Keep Track of Anime!").bold();
            HStack(alignment: .center, spacing: 5.0){
                Text("Total Anime:");
                Text("7");
                
            }
            HStack(alignment: .center, spacing: 5.0){
                Text("Total Manga:");
                Text("4")
            }
            HStack(alignment: .center, spacing: 5.0){
                Text("Days Watched:");
                Text("--");
                
            }
            HStack(alignment: .center, spacing: 5.0){
                Text("Chapters Read:");
                Text("--")
            }
            HStack(alignment: .center, spacing: 5.0){
                Text("Followers: ");
                Text("--");
                
            }
            HStack(alignment: .center, spacing: 5.0){
                Text("Following: ");
                Text("--")
            }
            VStack{
                Text("Please Enjoy The App!")
                Image("Uchiha").resizable().frame(width: 400, height: 490, alignment: .bottom)
            }
            Spacer()
        }
    }
    
}
struct SettingsDetail:View{
    @State private var userName:String = "";
    @State private var email:String = "";
    @State private var password: String = "";
    @State private var isEditing = false;
    @State private var showTheAlert = false;
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("Settings/Preferences").bold();
            Spacer().frame(height: 30);
            HStack(alignment: .center, spacing: 5.0){
                Image(systemName: "person").foregroundColor(.black);
                //Spacer().frame(height: 10);
                TextField("UserName: ", text: $userName).padding(10).font(Font.system(size: 12, weight: .medium, design: .default)).overlay(RoundedRectangle(cornerRadius: 10).stroke())
            }
            //Spacer(minLength: 1)
            HStack{
                Image(systemName: "envelope.fill").foregroundColor(.black);
                //Spacer().frame(height: 10);
                TextField("Email Address: ", text: $email).padding(10).font(Font.system(size: 12, weight: .medium, design: .default)).overlay(RoundedRectangle(cornerRadius: 10).stroke())
            }
            //Spacer(minLength: 1)
            HStack{
                Image(systemName: "lock.fill").foregroundColor(.black);
                //Spacer().frame(height: 10);
                SecureField("Password: ", text: $password).padding(10).font(Font.system(size: 12, weight: .medium, design: .default)).overlay(RoundedRectangle(cornerRadius: 10).stroke())
            }
            VStack{
                TurnOnNotificationsToggle();
                //*******JUST NEED TO ADD BUTTON HERE -> DO THIS IN THE MORNING!!! *****
                //Also, when button is pressed show a popup with something like "Your information has been successfully updated!"
                Button("Update"){
                    showTheAlert = true;
                }.alert(isPresented: $showTheAlert){
                    Alert(
                        title: Text("Notice!"), message: Text("Your new settings have been updated and will reflect in your profile."),
                        dismissButton: .default(Text("Wakata! (Got it)"))
                    )
                }
                Spacer().frame(height: 5);
                Text("Anime of the Week Winner: ")
                Image("myHeroAcademia").resizable().frame(width: 400, height: 490, alignment: .bottom)
            }
            Spacer();
            }
            //Spacer(minLength: 20);
        //
    }
}
struct AnimeDetail:View{
    //@State var width: Length = 1;
    var anime: Anime;
    //@State var text: String = anime.longDescription; -> doesn't work
    var body: some View{
        VStack(alignment: .center){
            //Text(anime.name).font(.title).fontWeight(.bold);
            Spacer().frame(height: 30);
            Image(anime.imageRef).resizable().frame(width: 415, height: 400, alignment: .top);
            Spacer().frame(height: 10);
            //I think this works, but my issue is that I need it to be scrollable.
            //And of course it needs to fit on the page properly
            //Text(anime.longDescription).lineLimit(nil);
            //TextEditor(text: /*@START_MENU_TOKEN@*/.constant("Placeholder")/*@END_MENU_TOKEN@*/) -> technical issues.
            
            //Apple should really make this easier -> scrollable textFields in Swift aren't this tricky but the line below does it.
            ScrollableTextViewAttemptSeven(anime: anime);
            RateTitle();
        }.padding().navigationBarTitle(anime.name);
    }
}
struct RateTitle:View{
    @State var rateShow = 1;
    var body: some View{
        HStack{
            Text("Please Rate Title!");
            Stepper(value: $rateShow, in: 1...10, step:1){
                Text("\(rateShow) out of 10")
            }
            
        }
    }
}
struct ScrollableTextViewAttemptSeven: View{
    var anime: Anime;
    var body: some View{
        return GeometryReader{ geometry in
            ScrollView{
                Text(anime.longDescription).lineLimit(nil).frame(width: geometry.size.width);
            }
        }
    }
}
struct AnimeRow: View{
    var anime: Anime;
    var body: some View{
        HStack{
            //Image(anime.type.rawValue).clipped();
            Image(anime.imageRef).resizable().frame(width: 55, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading){
                Text(anime.name).font(.title2);
                Text(anime.author).font(.subheadline).foregroundColor(.black);
                
            }
            Spacer();
        }
    }
}
struct AnimeListing: View{
    var body: some View{
        NavigationView{
            List(animeShows){ anime in
                NavigationLink(destination: AnimeDetail(anime:anime)){
                    AnimeRow(anime: anime);
                }
            }.navigationTitle("Editor's Choice!")
        }
    }
}
struct ContentView: View {
    var body: some View {
        TabView{
            AnimeListing().tabItem {
                Label("AnimeList", systemImage: "list.dash");
            }
            UserProfileDetail().tabItem{
                Label("Profile", systemImage: "person.3.fill");
            }
            SettingsDetail().tabItem{
                Label("Settings", systemImage: "gear");
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
