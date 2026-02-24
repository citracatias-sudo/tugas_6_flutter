import 'package:flutter/material.dart';

class HomePageDay12 extends StatefulWidget {
  @override
  State<HomePageDay12> createState() => _HomePageDay12State();
}

class _HomePageDay12State extends State<HomePageDay12> {

  bool isAgree = false;
  bool isDarkMode = false;
  String? selectedCategory;
  String selectedMenu = "checkbox";
  DateTime ? selectedDate;

  Color get textColor => isDarkMode ? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey[900] : Colors.white,

      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Text(
                  "Navigation Menu",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              ListTile(
                leading: Icon(Icons.check_box),
                title: Text("Checkbox"),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    selectedMenu = "checkbox";
                  });
                },
              ),

              ListTile(
                leading: Icon(Icons.list),
                title: Text("Dropdown"),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    selectedMenu = "dropdown";
                  });
                },
              ),

              Divider(),

              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text("Mode Gelap"),
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ),

            ],
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(36),
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {

    if (selectedMenu == "checkbox") {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Checkbox(
                value: isAgree,
                onChanged: (bool? newValue) {
                  setState(() {
                    isAgree = newValue ?? false;
                  });
                },
              ),
              Expanded(
                child: Text(
                  "Saya menyetujui semua persyaratan yang berlaku",
                  style: TextStyle(color: textColor),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),

          Text(
            isAgree
                ? "Lanjutkan pendaftaran"
                : "Anda belum bisa melanjutkan pendaftaran 😔",
            style: TextStyle(
              color: isAgree ? Colors.green : Colors.red,
            ),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: isAgree ? () {} : null,
            child: Text("Setuju dan lanjutkan"),
          ),
        ],
      );
    }

    if (selectedMenu == "dropdown") {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Pilih Kategori Produk",
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
          ),

            // ElevatedButton(onPressed: () async {
            // final DateTime?  await showDatePicker(context: context, firstDate: firstDate, lastDate: lastDate)
            
            // })
          
          SizedBox(height: 15),

          DropdownButton<String>(
            value: selectedCategory,
            hint: Text("Pilih Kategori"),
            isExpanded: true,
            items: [
              "Journaling Notes",
              "Planner Book",
              "Poetry"
            ].map((String val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedCategory = newValue;
              });
            },
          ),

          SizedBox(height: 15),

          if (selectedCategory != null)
            Text(
              "Anda memilih kategori: $selectedCategory",
              style: TextStyle(color: textColor),
            ),
        ],
      );
    }

    return Container();
  }
}