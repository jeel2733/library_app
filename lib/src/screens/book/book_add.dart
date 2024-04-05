import 'package:library_app/src/models/book.dart';
import 'package:library_app/src/models/notifiers/book_notifier.dart';
import 'package:library_app/src/widgets/buttons/confirm_button.dart';
import 'package:library_app/src/widgets/inputs/book_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookAdd extends StatelessWidget {
  final Book book;

  BookAdd({this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book == null ? 'Add a book' : 'Update book'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: AddBookForm(book: book),
        ),
      ),
    );
  }
}

class AddBookForm extends StatefulWidget {
  final Book book;

  AddBookForm({this.book});

  @override
  _AddBookFormState createState() => _AddBookFormState();
}

class _AddBookFormState extends State<AddBookForm> {
  final _formKey = GlobalKey<FormState>();
  var _title = '';
  var _author = '';
  var _description = '';
  var _rating;
  var _coverUrl = '';
  var _subject = '';

  @override
  void initState() {
    super.initState();
    _rating = widget.book?.rating ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    var bookNotifier = Provider.of<BookNotifier>(context);

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          BookTextFormField(
            labelText: 'Title',
            errorText: 'Enter a book title',
            initialValue: widget.book?.title,
            onSaved: (value) => _title = value,
          ),
          BookTextFormField(
            labelText: 'Book is available or not',
            errorText: 'Book is available or not',
            onSaved: (value) => _author = value,
            initialValue: widget.book?.author,
          ),
          BookTextFormField(
            labelText: 'E-book link',
            errorText: 'E-book link',
            initialValue: widget.book?.description,
            onSaved: (value) => _description = value,
          ),
          BookTextFormField(
            labelText: 'Cover url',
            errorText: 'Enter a cover url',
            initialValue: widget.book?.coverUrl,
            onSaved: (value) => _coverUrl = value,
          ),
          BookTextFormField(
            labelText: 'Subject',
            errorText: 'Enter a Subject',
            initialValue: widget.book?.category,
            onSaved: (value) => _subject = value,
          ),
          InputDecorator(
            decoration: InputDecoration(
              labelText: 'Rating',
              labelStyle: TextStyle(color: Colors.grey),
              suffixIcon: Chip(
                label: Text(_rating.toStringAsFixed(1)),
              ),
            ),
            child: Slider(
              value: _rating.roundToDouble(),
              min: 0.0,
              max: 10.0,
              divisions: 10,
              onChanged: (value) => setState(() => _rating = value),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: ConfirmButton(
              text: widget.book == null ? 'Add Book' : 'Update Book',
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  final book = Book(_title, _author, _description, _coverUrl,
                      _subject, _rating);

                  if (widget.book == null) {
                    bookNotifier.addBook(book);
                    Navigator.pop(context);
                  } else {
                    bookNotifier.updateBook(widget.book, book);
                    Navigator.of(context).pop();
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
