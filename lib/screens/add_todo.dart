import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:latihan_praktek_m03/models/todo.dart';
import 'package:latihan_praktek_m03/widgets/text_icon.dart';
import 'package:latihan_praktek_m03/widgets/textfield_decor.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key, required this.addTodo});

  final Function(Todo) addTodo;

  final TextEditingController judulC = TextEditingController();
  final TextEditingController keteranganC = TextEditingController();
  final TextEditingController mulaiC = TextEditingController();
  final TextEditingController selesaiC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todos",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextIcon(icon: Icons.dashboard, label: "Kegiatan"),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: TextfieldDecor(
                    textC: judulC,
                    hintText: "Judul Kegiatan",
                  ))
                ],
              ),
              SizedBox(
                height: 24,
              ),
              TextIcon(icon: Icons.list, label: "Keterangan"),
              SizedBox(
                height: 24,
              ),
              TextfieldDecor(
                hintText: "Tambah Keterangan",
                textC: keteranganC,
                lines: 5,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextIcon(
                          icon: Icons.calendar_month, label: "Tanggal Mulai"),
                      SizedBox(
                        height: 24,
                      ),
                      TextfieldDecor(
                        textC: mulaiC,
                        hintText: "20-03-2024",
                      )
                    ],
                  )),
                  SizedBox(
                    width: 36,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextIcon(
                          icon: Icons.calendar_month, label: "Tanggal Selesai"),
                      SizedBox(
                        height: 24,
                      ),
                      TextfieldDecor(
                        textC: selesaiC,
                        hintText: "20-03-2024",
                      )
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Batal",
                            style: TextStyle(color: Colors.purple),
                          ))),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple),
                          onPressed: () {
                            addTodo(Todo(
                                judul: judulC.text,
                                keterangan: keteranganC.text,
                                mulai: mulaiC.text,
                                selesai: "29 April 2024"));

                            Navigator.of(context).pop();
                          },
                          child: Text("Simpan")))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
