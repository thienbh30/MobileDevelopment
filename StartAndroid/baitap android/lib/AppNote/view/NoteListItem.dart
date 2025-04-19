import 'package:flutter/material.dart';
import 'dart:io';
import '../model/Note.dart'; // Import lớp Note
import '../view/NoteDetailScreen.dart'; // Import lớp NoteDetailScreen


class NoteListItem extends StatelessWidget {
  final Note note;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const NoteListItem({
    Key? key,
    required this.note,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: note.color != null
          ? Color(int.parse("0xFF${note.color!.substring(1)}"))
          : Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: note.priority == 3
              ? Colors.red
              : note.priority == 2
              ? Colors.orange
              : Colors.green,
          child: Text(note.title.substring(0, 1).toUpperCase()),
        ),
        title: Text(note.title),
        subtitle: Text(note.content.length > 50
            ? "${note.content.substring(0, 50)}..."
            : note.content),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit, color: Colors.blue),
              onPressed: onEdit,
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Xác nhận xoá'),
                    content: Text('Bạn có chắc chắn muốn xoá ghi chú này?'),
                    actions: [
                      TextButton(
                        child: Text('Huỷ'),
                        onPressed: () => Navigator.pop(context),
                      ),
                      TextButton(
                        child: Text('Xoá'),
                        onPressed: () {
                          onDelete();
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
        onTap: () {
          // Chuyển sang màn hình chi tiết
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NoteDetailScreen(note: note), // Giả định bạn đã tạo màn hình chi tiết
            ),
          );
        },
      ),
    );
  }
}
