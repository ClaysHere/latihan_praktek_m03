import 'package:flutter/material.dart';
import 'package:latihan_praktek_m03/models/todo.dart';
import 'package:latihan_praktek_m03/screens/add_todo.dart';

class TodoList extends StatefulWidget {
  TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todos = [
    Todo(
      judul: "Kuliah",
      keterangan: "Saya memulai kuliah, belajar mobile programming",
      mulai: "28 Maret 2024",
      selesai: "28 April 2024",
    ),
    Todo(
      judul: "Membuat Project",
      keterangan:
          "Mengerjakan Project Flutter sub project 1, yang terdiri dari materi pertemuan 1 2 3",
      mulai: "29 Maret 2024",
      selesai: "29 April 2024",
    ),
    Todo(
      judul: "Menonton TV",
      keterangan:
          "Menonton film favorit saya di stasiun TV EMMC TV, tukang haji naik bubur",
      mulai: "29 Maret 2024",
      selesai: "29 April 2024",
    ),
    Todo(
      judul: "Belajar Bahasa Pemrograman",
      keterangan: "Mempelajari bahasa pemrograman Python",
      mulai: "1 April 2024",
      selesai: "30 April 2024",
    ),
    Todo(
      judul: "Olahraga",
      keterangan: "Berolahraga di gym setiap hari",
      mulai: "1 April 2024",
      selesai: "30 April 2024",
    ),
    Todo(
      judul: "Menyelesaikan Buku",
      keterangan: "Membaca dan menyelesaikan buku 'The Power of Habit'",
      mulai: "2 April 2024",
      selesai: "15 April 2024",
    ),
    Todo(
      judul: "Membuat Presentasi",
      keterangan: "Mempersiapkan presentasi untuk proyek kantor",
      mulai: "5 April 2024",
      selesai: "10 April 2024",
    ),
    Todo(
      judul: "Menulis Artikel",
      keterangan: "Menulis artikel untuk blog pribadi",
      mulai: "10 April 2024",
      selesai: "20 April 2024",
    ),
    Todo(
      judul: "Belanja Bulanan",
      keterangan: "Membeli kebutuhan bulanan di supermarket",
      mulai: "15 April 2024",
      selesai: "15 April 2024",
    ),
    Todo(
      judul: "Bersih-bersih Rumah",
      keterangan: "Melakukan kebersihan rumah secara menyeluruh",
      mulai: "20 April 2024",
      selesai: "21 April 2024",
    ),
    Todo(
      judul: "Mengikuti Webinar",
      keterangan: "Mengikuti webinar tentang pengembangan diri",
      mulai: "25 April 2024",
      selesai: "25 April 2024",
    ),
    // Tambahkan entri Todo tambahan di sini
  ];

  void addTodo(Todo todo) {
    setState(() {
      todos.add(todo);
    });
  }

  void deleteTodo(String judul) {
    setState(() {
      todos = todos.where((todo) => todo.judul != judul).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("TodoList"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 18,
          ),
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "${todos[index].judul}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "${todos[index].keterangan}",
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${todos[index].mulai} s/d ${todos[index].selesai} ",
                                style: TextStyle(fontSize: 10),
                              ),
                              IconButton(
                                  constraints: BoxConstraints(),
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    deleteTodo(todos[index].judul);
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    size: 18,
                                    color: Colors.red,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AddTodo(addTodo: addTodo);
            },
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
