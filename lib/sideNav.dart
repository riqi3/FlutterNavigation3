import 'package:flutter/material.dart';

import 'loginForm.dart';
import 'package:login_form/home.dart';
import 'package:login_form/row.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Enrique III C. Pacudan BSIT - 3",
                style: TextStyle(color: Colors.white)),
            accountEmail: Text("enrique.pacudan@usjr.edu.ph",
                style: TextStyle(color: Colors.white)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://scontent.fceb2-1.fna.fbcdn.net/v/t39.30808-6/239832143_1891970710974751_584089794898206477_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHwLK_0WzpoHSDFptmPPoqnDocKZQTkfCgOhwplBOR8KCrlcYTIHBWeYmKuQ1uny2ol64GOT5imFCTT9-q_uaf6&_nc_ohc=FYwGvRq0meUAX_5FgXN&_nc_ht=scontent.fceb2-1.fna&oh=00_AfDKRS4beDUVm9Mrm26eJLFLWMBU6JW2B2oMagQ1ia7NDA&oe=636CB953',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://scontent-xsp1-3.xx.fbcdn.net/v/t1.18169-9/27867370_850948541743645_687003434840380314_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=19026a&_nc_eui2=AeGlQPfzKVaHY0CQxOBW2mlkoACO0hyDKFygAI7SHIMoXCMkk1rH8JL0C9Zqe9Jav3qWglZ7IRvp62VhQRV7Bxk2&_nc_ohc=s--0bSqesfwAX_v9gUy&_nc_ht=scontent-xsp1-3.xx&oh=00_AT8FS2ZryQyTdbofo-rGzRKixCE-KziyvCsPZPTz6ZR03w&oe=637CF607',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
            },
          ),
                    ListTile(
            leading: Icon(Icons.adb_rounded),
            title: Text('Rows and Columns'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RowScreen(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
