import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class HomePageDay12 extends StatefulWidget {
  @override
  State<HomePageDay12> createState() => _HomePageDay12State();
}

class _HomePageDay12State extends State<HomePageDay12> {

  bool isAgree = false;
  bool isDarkMode = false;
  String? selectedCategory;
  String selectedMenu = "checkbox";

  DateTime? selectedDate;
  TimeOfDay? selectedTime;

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
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              DrawerHeader(
                decoration: BoxDecoration(color: Colors.transparent),
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

              ListTile(
                leading: Icon(Icons.date_range),
                title: Text("Tanggal Lahir"),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    selectedMenu = "date";
                  });
                },
              ),

              ListTile(
                leading: Icon(Icons.access_time),
                title: Text("Atur Pengingat"),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    selectedMenu = "time";
                  });
                },
              ),

              Divider(),

              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text("Dark"),
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

    // CHECKBOX
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
        ],
      );
    }

    // DROPDOWN
    if (selectedMenu == "dropdown") {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pilih Kategori Produk",
            style: TextStyle(fontSize: 18, color: textColor),
          ),
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

    // DATE PICKER
    if (selectedMenu == "date") {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ElevatedButton(
        onPressed: () async {
          DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          );

          if (picked != null) {
            setState(() {
              selectedDate = picked;
            });
          }
        },
        child: Text("Pilih Tanggal Lahir"),
      ),
      SizedBox(height: 20),
      if (selectedDate != null)
        Text(
          "Tanggal Lahir: ${DateFormat('dd MMMM yyyy', 'id_ID').format(selectedDate!)}",
          style: TextStyle(color: textColor),
        ),
    ],
  );
}

    // TIME PICKER
    if (selectedMenu == "time") {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (picked != null) {
                setState(() {
                  selectedTime = picked;
                });
              }
            },
            child: Text("Pilih Waktu Pengingat"),
          ),
          SizedBox(height: 20),
          if (selectedTime != null)
            Text(
              "Pengingat diatur pukul: ${selectedTime!.format(context)}",
              style: TextStyle(color: textColor),
            ),
        ],
      );
    }

    return Container();
  }
}