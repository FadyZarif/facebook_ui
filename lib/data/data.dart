
import '../models/post_model.dart';
import '../models/story_model.dart';
import '../models/user_model.dart';

final User currentUser = User(
  name: 'Fady Zarif',
  imageUrl:
      'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/pro.png?alt=media&token=36ed8920-df3d-420b-b643-3978981b8861',
);

final List<User> onlineUsers = [
  const User(
    name: 'Pola Miras',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/pola.png?alt=media&token=e4064195-ebe0-46ec-9407-fd0030f4613e',
  ),
  const User(
    name: 'Abanob Yousery',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/pepo.png?alt=media&token=65920cf1-9500-41c0-885e-deaa5ca14cf0',
  ),
  const User(
    name: 'Mariam Nasr',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/mariam.png?alt=media&token=bb2bddd5-ce72-4848-9f78-b6b061f83c06',
  ),
  const User(
    name: 'Maria Zarif Roshdy',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/maria.png?alt=media&token=3ba822f4-0a98-46b4-bfa7-9e723e4741d5',
  ),
  const User(
    name: 'Sandy Samoel',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/sandy.png?alt=media&token=523caf9a-d745-4d51-8a82-d7f477dfc43e',
  ),
  const User(
    name: 'Fady Ebrahim Ayad',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/fod.png?alt=media&token=1dae3716-930d-4dfc-8aca-e6396f5f00af',
  ),
  const User(
    name: 'Sabah Muhamed',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/sabah.png?alt=media&token=eeaf3760-8f75-46be-b5bb-95b2a393f543',
  ),
  const User(
      name: 'George Ayman',
      imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/geo.png?alt=media&token=077b74b9-c7b5-4865-87cd-f5accb6a1c5b'),
  const User(
    name: 'Zarif Roshdy',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/zari.png?alt=media&token=7a3ff1c0-9094-41a4-8bf3-c9abb332166b',
  ),
  const User(
    name: 'Marian Nasr',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/marian.png?alt=media&token=06ceba28-ad94-42b1-80a3-1c028f578ba4',
  ),
  const User(
    name: 'Ammar Ehab',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/ammar.png?alt=media&token=e2ed6365-28ee-4bb1-832c-8bd2c2184271',
  ),

];

final List<Story> stories = [
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/mariamst.png?alt=media&token=ee8264dc-5db5-4556-8b8a-f01a41a196d8',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/mariast.png?alt=media&token=1d866c26-e8be-4119-b2df-6d4b5a572a79',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/marianst.png.jpg?alt=media&token=1c4682e6-b8d9-44b0-bf46-cb1336011527',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[1],
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/pepost.png?alt=media&token=bbf0825e-606f-456a-b06b-972e801173f7',
  ),
  Story(
    user: onlineUsers[5],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[8],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),

];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'Happy New Year',
    timeAgo: '58m',
    imageUrl: 'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/newyear.png?alt=media&token=33aa9e17-03ec-4bf7-bacc-7d286ba26ab2',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[0],
    caption:
        'أول مرة ألاحظ إن جملة (انهاردة بليل) غير منطقية تماماً ... 🧐 \n عشان كلمة (انهاردة) في أصلها اللغوي المفروض تتكتب (النهار دة) 😲ه \n ولما فكرت لاحظت إن (بكرة بليل) برضو مش منطقية 😂 \n وفوق كل دة بقى كلمة (بليل) المفروض تتكتب (بـالليل) 😉🤣ه',
    timeAgo: '3hr',
    imageUrl: null,
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'الحياة جميلة معايا \n عشان انتوا حياتي ❤️',
    timeAgo: '8hr',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/mariapo.png?alt=media&token=62cfd0ca-abae-4ece-b34a-01eeb840be9b',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[4],
    caption: '❤️❤️❤️❤️ طب عقبال كل مره',
    timeAgo: '15hr',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/sandypo.png?alt=media&token=1f811052-0bcc-4841-8b2b-031225dcb639',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[2],
    caption: 'Luxor ',
    timeAgo: '1d',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/mariampo.png?alt=media&token=91d67c60-93b9-43a8-b5c2-4cf35a04a556',
    likes: 1523,
    shares: 129,
    comments: 301,
  ),
  Post(
    user: onlineUsers[5],
    caption: '❤️🔥 نخليها هنا للذكري بقي  ',
    timeAgo: '2d',
    imageUrl:
    'https://firebasestorage.googleapis.com/v0/b/grocery-app-with-admin-p-8c357.appspot.com/o/fadypo.png?alt=media&token=9d4706f2-280f-49b6-b0e4-41910d1cbeab',
    likes: 1823,
    shares: 189,
    comments: 501,
  ),
];
