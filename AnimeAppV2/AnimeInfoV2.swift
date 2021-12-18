//
//  AnimeInfoV2.swift
//  AnimeAppV2
//
//  Created by Dewone Westerfield on 5/23/21.
//

import Foundation
import SwiftUI

class Anime: Identifiable{
    enum `Type` : String{ 
        case myHeroAcademia = "myHeroAcademia"; //0
        case attackOnTitan = "attackOnTitan"; //1
        case fireForce = "fireForce"; //2
        case worldTrigger = "worldTrigger"; //3
        case sevenDeadlySins = "sevenDeadlySins"; //4
        case aceOfDiamond = "aceOfDiamond"; //5
        case onePiece = "onePiece"; //6
        case magi = "magi"; //7
        case blackClover = "blackClover"; //8
        case haikyuu = "haikyuu"; //9
        case hunterXhunter = "hunterXhunter"; //10
        case demonSlayer = "demonSlayer"; //11
        case ironBloodedOrphans = "ironBloodedOrphans"; //12
        case bleach = "bleach"; //13
        case blueExorcist = "blueExorcist"; //14
        case fullMetalAlchemistBrotherhood = "fullMetalAlchemistBrotherhood"; //15
    }
    var name: String;
    var type : Type;
    var author : String; //in example => shortDescription
    var longDescription : String;
    var imageRef : String;
    init(name:String,type:Type,author:String,longDescription:String,imageRef:String){
        self.name = name;
        self.type = type;
        self.author = author;
        self.longDescription = longDescription;
        self.imageRef = imageRef;
    }
}
let animeShows = [
    //0
    Anime(name: "Boku No Hero Akademia",
        type: .myHeroAcademia,
        author: "Kohei Horikoshi",
        longDescription: "The appearance of 'quirks,' newly discovered super powers, has been steadily increasing over the years, with 80 percent of humanity possessing various abilities from manipulation of elements to shapeshifting. This leaves the remainder of the world completely powerless, and Izuku Midoriya is one such individual. Since he was a child, the ambitious middle schooler has wanted nothing more than to be a hero. Izuku's unfair fate leaves him admiring heroes and taking notes on them whenever he can. But it seems that his persistence has borne some fruit: Izuku meets the number one hero and his personal idol, All Might. All Might's quirk is a unique ability that can be inherited, and he has chosen Izuku to be his successor! Enduring many months of grueling training, Izuku enrolls in UA High, a prestigious high school famous for its excellent hero training program, and this year's freshmen look especially promising. With his bizarre but talented classmates and the looming threat of a villainous organization, Izuku will soon learn what it really means to be a hero.",
        imageRef: "myHeroAcademia"),
    //1
    Anime(name: "Shokugeki No Kyojin",
        type: .attackOnTitan,
        author: "Hajime Isayama",
        longDescription: "Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations. After witnessing a horrific personal loss at the hands of the invading creatures, Eren Yeager dedicates his life to their eradication by enlisting into the Survey Corps, an elite military unit that combats the merciless humanoids outside the protection of the walls. Based on Hajime Isayama's award-winning manga, Shingeki no Kyojin follows Eren, along with his adopted sister Mikasa Ackerman and his childhood friend Armin Arlert, as they join the brutal war against the titans and race to discover a way of defeating them before the last walls are breached.",
        imageRef: "attackOnTitan"),
    //2
    Anime(name: "En'en No Shōbōtai",
        type: .fireForce,
        author: "Atsushi Ōkubo",
        longDescription: "Shinra Kusakabe is a third generation pyrokinetic youth who gained the nickname 'Devil's Footprints' for his ability to ignite his feet at will. He joins Special Fire Force Company 8, which features other pyrokinetics who dedicated themselves to ending the Infernal attacks for good while investigating Companies 1 through 7 for potential corruption within their ranks. Shinra begins to learn that his younger brothers abduction during the fire that killed their mother 12 years ago is caused by a mysterious doomsday cult that is behind the Infernal attacks. Company 8 and their allies oppose the White Cloaks and their Knights of the Ashen Flame, who seek certain individuals like Shinra and his brother (Sho) to enact a scheme to repeat the Great Disaster.",
        imageRef: "fireForce"),
    //3
    Anime(name: "Wārudo Torigā",
        type: .worldTrigger,
        author: "Daisuke Ashihara",
        longDescription: "One day, in Mikado City, a gateway to a parallel universe had opened. From it, an outbreak of aliens known as Neighbors wreaked havoc across the city with their own sophisticated technology. Suddenly, a mysterious group of people brought themselves together to repel their attacks. Soon after, Border was formed, an organization researching Neighbor technology and maintaining a defense system against the Neighbors. Its members are armed with weapons known as Triggers. Four years later, the city has recovered from initial Neighbor attacks to the point where its civilians have become used to them.",
        imageRef: "worldTrigger"),
    
    //4
    Anime(name: "Nanatsu no Taizai",
          type: .sevenDeadlySins,
        author: "Nakaba Suzuki",
        longDescription: "In a world similar to the European Middle Ages, the feared yet revered Holy Knights of Britannia use immensely powerful magic to protect the region of Britannia and its kingdoms. However, a small subset of the Knights supposedly betrayed their homeland and turned their blades against their comrades in an attempt to overthrow the ruler of Liones. They were defeated by the Holy Knights, but rumors continued to persist that these legendary knights, called the 'Seven Deadly Sins' were still alive. Ten years later, the Holy Knights themselves staged a coup d’état, and thus became the new, tyrannical rulers of the Kingdom of Liones. Based on the best-selling manga series of the same name, Nanatsu no Taizai follows the adventures of Elizabeth, the third princess of the Kingdom of Liones, and her search for the Seven Deadly Sins. With their help, she endeavors to not only take back her kingdom from the Holy Knights, but to also seek justice in an unjust world.",
        imageRef: "sevenDeadlySins"),
    
    //5
    Anime(name: "Daiya no Ace",
          type: .aceOfDiamond,
        author: "Yuji Terajima",
        longDescription: "With a stray pitch that completely missed the batter, Eijun Sawamura loses his final middle school baseball game. Frustrated by this defeat, Eijun and his teammates vow to reach the national tournament once they are in high school. But everything changes when a scout unexpectedly invites him to Tokyo's prestigious Seidou High School after seeing the potential in his unusual pitching style. Encouraged by his teammates, Eijun accepts the offer, ready to improve his skills and play at a much more competitive level of baseball. However, now surrounded by a large number of skilled players, Eijun struggles to find his place on the team. He declares that he will one day become the team's ace, but that's only if fellow first year Satoru Furuya doesn't take the title first, with his breakneck fastballs that earn him a coveted spot on the starting roster. With the addition of these talented new players to an already powerful lineup, the Seidou baseball team aims to become the best in Japan, facing off against a number of formidable foes that stand in their way.",
        imageRef: "aceOfDiamond"),
    
    //6
    Anime(name: "Wanpīsu",
          type: .onePiece,
        author: "Eiichiro Oda",
        longDescription: "Gol D. Roger was known as the 'Pirate King,' the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King. Enter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy's reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece.",
        imageRef: "onePiece"),
    
    //7
    Anime(name: "Magi",
          type: .magi,
        author: "Shinobu Ohtaka",
        longDescription: "Dispersed around the world, there are several bizarre labyrinths hiding incredible treasures within them. These mysterious places, known as 'Dungeons' are said to be the work of Magi, a class of rare magicians, who also help people build their empires by guiding them to a dungeon. Djinns, supernatural beings that rule over the labyrinths, grant successful conquerors access to their immense power and choose them as potential king candidates to rule the world. Having spent life in isolation, Aladdin, a kind and young magician, is eager to explore the world upon finally leaving his home behind. He begins his journey only accompanied by his mentor Ugo—a djinn that Aladdin can summon with his flute. However, Aladdin soon becomes friends with the courageous Alibaba Saluja after causing the destruction of a local merchant's supply cart. In order to pay for the damages, Alibaba suggests that they attempt to conquer the nearest dungeon, taking the first step in an epic adventure that will decide the fate of the world itself.",
        imageRef: "magi"),
    
    //8
    Anime(name: "Burakkukurōbā",
          type: .blackClover,
        author: "Yūki Tabata",
        longDescription: "Asta and Yuno were abandoned at the same church on the same day. Raised together as children, they came to know of the 'Wizard King'—a title given to the strongest mage in the kingdom—and promised that they would compete against each other for the position of the next Wizard King. However, as they grew up, the stark difference between them became evident. While Yuno is able to wield magic with amazing power and control, Asta cannot use magic at all and desperately tries to awaken his powers by training physically. When they reach the age of 15, Yuno is bestowed a spectacular Grimoire with a four-leaf clover, while Asta receives nothing. However, soon after, Yuno is attacked by a person named Lebuty, whose main purpose is to obtain Yuno's Grimoire. Asta tries to fight Lebuty, but he is outmatched. Though without hope and on the brink of defeat, he finds the strength to continue when he hears Yuno's voice. Unleashing his inner emotions in a rage, Asta receives a five-leaf clover Grimoire, a 'Black Clover' giving him enough power to defeat Lebuty. A few days later, the two friends head out into the world, both seeking the same goal—to become the Wizard King!",
        imageRef: "blackClover"),
    
    //9
    Anime(name: "Haikyu!!",
          type: .haikyuu,
        author: "Haruichi Furudate",
        longDescription: "Inspired after watching a volleyball ace nicknamed 'Little Giant' in action, small-statured Shouyou Hinata revives the volleyball club at his middle school. The newly-formed team even makes it to a tournament; however, their first match turns out to be their last when they are brutally squashed by the 'King of the Court,' Tobio Kageyama. Hinata vows to surpass Kageyama, and so after graduating from middle school, he joins Karasuno High School's volleyball team—only to find that his sworn rival, Kageyama, is now his teammate. Thanks to his short height, Hinata struggles to find his role on the team, even with his superior jumping power. Surprisingly, Kageyama has his own problems that only Hinata can help with, and learning to work together appears to be the only way for the team to be successful. Based on Haruichi Furudate's popular shounen manga of the same name, Haikyuu!! is an exhilarating and emotional sports comedy following two determined athletes as they attempt to patch a heated rivalry in order to make their high school volleyball team the best in Japan.",
        imageRef: "haikyuu"),
    
    //10
    Anime(name: "Hantā Hantā",
          type: .hunterXhunter,
        author: "Yoshihiro Togashi",
        longDescription: "Hunter x Hunter is set in a world where Hunters exist to perform all manner of dangerous tasks like capturing criminals and bravely searching for lost treasures in uncharted territories. Twelve-year-old Gon Freecss is determined to become the best Hunter possible in hopes of finding his father, who was a Hunter himself and had long ago abandoned his young son. However, Gon soon realizes the path to achieving his goals is far more challenging than he could have ever imagined. Along the way to becoming an official Hunter, Gon befriends the lively doctor-in-training Leorio, vengeful Kurapika, and rebellious ex-assassin Killua. To attain their own goals and desires, together the four of them take the Hunter Exam, notorious for its low success rate and high probability of death. Throughout their journey, Gon and his friends embark on an adventure that puts them through many hardships and struggles. They will meet a plethora of monsters, creatures, and characters—all while learning what being a Hunter truly means.",
        imageRef: "hunterXhunter"),
    
    //11
    Anime(name: "Kimetsu no Yaiba",
          type: .demonSlayer,
        author: "Koyoharu Gotouge",
        longDescription: "Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado's shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night. When he finally arrives back home the next day, he is met with a horrifying sight—his whole family has been slaughtered. Worse still, the sole survivor is his sister Nezuko, who has been turned into a bloodthirsty demon. Consumed by rage and hatred, Tanjirou swears to avenge his family and stay by his only remaining sibling. Alongside the mysterious group calling themselves the Demon Slayer Corps, Tanjirou will do whatever it takes to slay the demons and protect the remnants of his beloved sister's humanity.",
        imageRef: "demonSlayer"),
    //12
    Anime(name: "Kidō Senshi Gandamu Tekketsu no Orufenzu",
          type: .ironBloodedOrphans,
        author: "Mari Okada",
        longDescription: "Over three hundred years have passed since the Calamity War, the great conflict between Earth and its outer space colonies. Now Earth is ruled over by four economic blocs, and the military organization Gjallarhorn is responsible for keeping the peace. Mars, on the other hand, depends heavily on Earth's economy. Horrified by the appalling living conditions that Mars' inhabitants have to bear, Kudelia Aina Bernstein, a young aristocrat from the Chryse Autonomous Region, gets involved in the Red Planet's independence movement. She hires the services of a local company, Chryse Guard Security (CGS), to escort her on the journey to Earth to negotiate economic conditions with the earthly bloc that controls the region. The Third Army Division—consisting of Mikazuki Augus, Orga Itsuka, and many other child soldiers—are chosen to protect her. When Gjallarhorn attacks the CGS facilities to assassinate the young revolutionary threatening their interests, Orga and his comrades must not let the attackers accomplish their goal—in fact, Gjallarhorn's actions might turn out to be the unintentional catalyst that leads the children to be the forgers of their own destiny.",
        imageRef: "ironBloodedOrphans"),
    //13
    Anime(name: "Hyōhaku",
          type: .bleach,
        author: "Tite Kubo",
        longDescription: "Ichigo Kurosaki is an ordinary high schooler—until his family is attacked by a Hollow, a corrupt spirit that seeks to devour human souls. It is then that he meets a Soul Reaper named Rukia Kuchiki, who gets injured while protecting Ichigo's family from the assailant. To save his family, Ichigo accepts Rukia's offer of taking her powers and becomes a Soul Reaper as a result. However, as Rukia is unable to regain her powers, Ichigo is given the daunting task of hunting down the Hollows that plague their town. However, he is not alone in his fight, as he is later joined by his friends—classmates Orihime Inoue, Yasutora Sado, and Uryuu Ishida—who each have their own unique abilities. As Ichigo and his comrades get used to their new duties and support each other on and off the battlefield, the young Soul Reaper soon learns that the Hollows are not the only real threat to the human world.",
        imageRef: "bleach"),
    //14
    Anime(name: "Ao no Exorcist",
          type: .blueExorcist,
        author: "Kazue Kato",
        longDescription: "Humans and demons are two sides of the same coin, as are Assiah and Gehenna, their respective worlds. The only way to travel between the realms is by the means of possession, like in ghost stories. However, Satan, the ruler of Gehenna, cannot find a suitable host to possess and therefore, remains imprisoned in his world. In a desperate attempt to conquer Assiah, he sends his son instead, intending for him to eventually grow into a vessel capable of possession by the demon king. Ao no Exorcist follows Rin Okumura who appears to be an ordinary, somewhat troublesome teenager—that is until one day he is ambushed by demons. His world turns upside down when he discovers that he is in fact the very son of Satan and that his demon father wishes for him to return so they can conquer Assiah together. Not wanting to join the king of Gehenna, Rin decides to begin training to become an exorcist so that he can fight to defend Assiah alongside his brother Yukio.",
        imageRef: "blueExorcist"),
    //15
    Anime(name: "Haganenorenkinjutsushi no kyōdai ai",
          type: .fullMetalAlchemistBrotherhood,
        author: "Hiromu Arakawa",
        longDescription: "'In order for something to be obtained, something of equal value must be lost.' Alchemy is bound by this Law of Equivalent Exchange—something the young brothers Edward and Alphonse Elric only realize after attempting human transmutation: the one forbidden act of alchemy. They pay a terrible price for their transgression—Edward loses his left leg, Alphonse his physical body. It is only by the desperate sacrifice of Edward's right arm that he is able to affix Alphonse's soul to a suit of armor. Devastated and alone, it is the hope that they would both eventually return to their original bodies that gives Edward the inspiration to obtain metal limbs called 'automail' and become a state alchemist, the Fullmetal Alchemist. Three years of searching later, the brothers seek the Philosopher's Stone, a mythical relic that allows an alchemist to overcome the Law of Equivalent Exchange. Even with military allies Colonel Roy Mustang, Lieutenant Riza Hawkeye, and Lieutenant Colonel Maes Hughes on their side, the brothers find themselves caught up in a nationwide conspiracy that leads them not only to the true nature of the elusive Philosopher's Stone, but their country's murky history as well. In between finding a serial killer and racing against time, Edward and Alphonse must ask themselves if what they are doing will make them human again... or take away their humanity.",
        imageRef: "fullMetalAlchemistBrotherhood")
];
