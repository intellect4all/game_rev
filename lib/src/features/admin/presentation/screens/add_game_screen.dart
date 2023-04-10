import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/core/constants/extensions/context/context.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/core/utils/utils.dart';
import 'package:game_rev/src/core/widgets/app_image_widget.dart';
import 'package:game_rev/src/core/widgets/buttons/custom_button.dart';
import 'package:game_rev/src/core/widgets/text_input.dart';
import 'package:game_rev/src/features/admin/presentation/admin_bloc.dart';
import 'package:game_rev/src/features/dashboard/domain/entity/paginated_response.dart';
import 'package:image_picker/image_picker.dart';
import 'package:string_extensions/string_extensions.dart';

import '../../../dashboard/domain/entity/genre.dart';

class AddGameScreen extends StatefulWidget {
  static const routeName = '/add-game';

  const AddGameScreen({Key? key}) : super(key: key);

  @override
  State<AddGameScreen> createState() => _AddGameScreenState();
}

class _AddGameScreenState extends State<AddGameScreen> {
  final _textControllers = <String, TextEditingController>{};
  final _fieldParams = <TextFieldParams>[];
  final picker = ImagePicker();
  final _listOfGenres = <Genre>[];

  XFile? _image;

  @override
  void initState() {
    super.initState();
    _setupFields();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Game Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: BlocListener<AdminBloc, AdminState>(
              listener: _listener,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  ..._fieldParams
                      .map(
                        (e) => CustomTextInput(
                          label: e.label,
                          prefixIcon: e.suffixIcon,
                          validator: e.validator,
                          keyboardType: e.keyboardType,
                          obscureText: e.obscureText,
                          controller: e.controller,
                          inputFormatters: e.inputFormatters,
                          onTap: e.onTap,
                        ),
                      )
                      .toList(),
                  const SizedBox(height: 10),
                  // build Action chips for genres
                  Wrap(
                    spacing: 10,
                    children: _listOfGenres
                        .map(
                          (e) => ActionChip(
                            label: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(e.title.toTitleCase!),
                                const SizedBox(width: 5),
                                const Icon(Icons.close)
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                _listOfGenres.remove(e);
                              });
                            },
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _selectGenre,
                    child: const Text('Select Genres'),
                  ),
                  const SizedBox(height: 20),
                  if (_image != null)
                    Image.file(
                      File(_image!.path),
                      width: 200,
                      height: 200,
                    ),
                  ElevatedButton(
                    onPressed: _selectImage,
                    child: const Text('Select Cover'),
                  ),
                  const SizedBox(height: 10),
                  BlocBuilder<AdminBloc, AdminState>(
                    builder: (context, state) {
                      return CustomButton(
                        onPressed: state.maybeWhen(
                            orElse: () => _addGame, addingGame: () => () {}),
                        child: state.maybeWhen(
                          orElse: () => const Text('Add Game'),
                          addingGame: () => const CircularProgressIndicator(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _setupFields() {
    _textControllers['developer'] = TextEditingController();
    _textControllers['publisher'] = TextEditingController();
    _textControllers['releaseDate'] = TextEditingController();
    _textControllers['title'] = TextEditingController();
    _textControllers['summary'] = TextEditingController();

    _fieldParams.addAll([
      TextFieldParams(
        controller: _textControllers['title']!,
        label: 'Title',
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        isValid: () {
          if (_textControllers['title']!.text.isEmpty) {
            return 'Title is required';
          }

          if (_textControllers['title']!.text.length < 3) {
            return 'Title must be at least 3 characters';
          }

          return null;
        },
      ),
      TextFieldParams(
        controller: _textControllers['summary']!,
        label: 'Summary',
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        isValid: () {
          if (_textControllers['summary']!.text.isEmpty) {
            return 'Summary is required';
          }

          if (_textControllers['summary']!.text.length < 10 ||
              _textControllers['summary']!.text.length > 500) {
            return 'Summary must be at least 10 characters and not more than 500 characters';
          }

          return null;
        },
      ),
      TextFieldParams(
        controller: _textControllers['developer']!,
        label: 'Developer',
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        isValid: () {
          if (_textControllers['developer']!.text.isEmpty) {
            return 'Developer is required';
          }

          return null;
        },
      ),
      TextFieldParams(
        controller: _textControllers['publisher']!,
        label: 'Publisher',
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        isValid: () {
          if (_textControllers['publisher']!.text.isEmpty) {
            return 'Publisher is required';
          }

          return null;
        },
      ),
      TextFieldParams(
        controller: _textControllers['releaseDate']!,
        label: 'Release Date',
        keyboardType: TextInputType.none,
        onTap: () async {
          final date = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          );

          if (date != null) {
            _textControllers['releaseDate']!.text = date.year.toString();
          }
        },
        textInputAction: TextInputAction.next,
        isValid: () {
          if (_textControllers['releaseDate']!.text.isEmpty) {
            return 'Release Date is required';
          }

          return null;
        },
      ),
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    _textControllers.forEach((key, value) {
      value.dispose();
    });
  }

  Future<void> _selectImage() async {
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      print(image.path);
      setState(() {
        _image = image;
      });
      return;
    }

    Utils.showToast("No image selected");
  }

  Future<void> _selectGenre() async {
    // show bottom sheet
    final genres = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: context.screenHeight() * 0.5,
          child: SelectGenresBottomSheet(
            selectedGenres: _listOfGenres,
          ),
        );
      },
    );

    if (genres == null || genres is! List<Genre>) {
      Utils.showToast("No genres selected");
      return;
    }

    setState(() {
      _listOfGenres.clear();
      _listOfGenres.addAll(genres);
    });
  }

  Future<void> _addGame() async {
    for (final field in _fieldParams) {
      final error = field.isValid!();
      if (error != null) {
        Utils.showToast(error);
        return;
      }
    }
    //
    if (_listOfGenres.isEmpty) {
      Utils.showToast("Please select at least one genre");
      return;
    }
    //
    if (_image == null) {
      Utils.showToast("Please select a cover image");
      return;
    }
    //

    context.read<AdminBloc>().add(
          AdminEvent.addGame(
            fields: _textControllers.map((key, value) {
              return MapEntry(key, value.text);
            }),
            genres: _listOfGenres,
            image: _image!,
          ),
        );
  }

  void _listener(BuildContext context, AdminState state) {
    state.maybeWhen(
      orElse: () {},
      failure: (message) {
        Utils.showToast(message);
      },
      addingGameSuccess: () {
        Utils.showToast("Game added successfully");
        Navigator.of(context).pop();
      },
    );
  }
}

class SelectGenresBottomSheet extends StatefulWidget {
  final List<Genre> selectedGenres;

  const SelectGenresBottomSheet(
      {Key? key, this.selectedGenres = const <Genre>[]})
      : super(key: key);

  @override
  State<SelectGenresBottomSheet> createState() =>
      _SelectGenresBottomSheetState();
}

class _SelectGenresBottomSheetState extends State<SelectGenresBottomSheet> {
  PaginatedResponse<Genre> _genres = PaginatedResponse<Genre>.empty();
  final _selectedGenres = <Genre>[];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _selectedGenres.addAll(widget.selectedGenres);
    log(_selectedGenres.toString());
    context
        .read<AdminBloc>()
        .add(const AdminEvent.fetchGenres(limit: 30, offset: 0));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminBloc, AdminState>(
      listener: _listener,
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return Column(
              children: [
                Expanded(
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (scrollInfo) {
                      if (scrollInfo.metrics.pixels ==
                              scrollInfo.metrics.maxScrollExtent &&
                          !_isLoading &&
                          _genres.hasMore) {
                        context.read<AdminBloc>().add(AdminEvent.fetchGenres(
                            limit: 30, offset: _genres.data.length));
                      }
                      return false;
                    },
                    child: Scrollbar(
                      child: ListView.builder(
                        itemCount: _genres.data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_genres.data[index].title.toTitleCase!),
                            onTap: () {
                              final isSelected =
                                  _selectedGenres.contains(_genres.data[index]);

                              if (isSelected) {
                                _selectedGenres.remove(_genres.data[index]);
                              } else {
                                _selectedGenres.add(_genres.data[index]);
                              }
                              setState(() {});
                            },
                            leading: Checkbox(
                              value:
                                  _selectedGenres.contains(_genres.data[index]),
                              onChanged: (value) {
                                if (value == true) {
                                  _selectedGenres.add(_genres.data[index]);
                                } else {
                                  _selectedGenres.remove(_genres.data[index]);
                                }
                                setState(() {});
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Visibility(
                    visible: _selectedGenres.isNotEmpty,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, _selectedGenres);
                      },
                      child: const Text('Done'),
                    ),
                  ),
                ),
              ],
            );
          },
          failure: (e) {
            return SizedBox(
              height: context.screenHeight() * 0.5,
              child: Center(
                child: Text(
                  e.message,
                  style: context.textTheme.bodyText1,
                ),
              ),
            );
          },
          fetchingGenres: (e) {
            return SizedBox(
              height: context.screenHeight() * 0.5,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        );
      },
    );
  }

  void _listener(BuildContext context, AdminState state) {
    state.maybeMap(
      orElse: () {
        setState(() {
          _isLoading = false;
        });
      },
      fetchingGenresSuccess: (e) {
        _genres = _genres.copyWith(
          hasMore: e.genres.hasMore,
          currentPage: e.genres.currentPage,
          itemsPerPage: e.genres.itemsPerPage,
          totalItems: e.genres.totalItems,
          totalPages: e.genres.totalPages,
        );

        final currentData = _genres.data;

        for (final genre in e.genres.data) {
          if (!_genres.data.contains(genre)) {
            currentData.add(genre);
          }
        }

        _genres = _genres.copyWith(data: currentData);

        setState(() {
          _isLoading = false;
        });
      },
      fetchingGenres: (e) {
        setState(() {
          _isLoading = true;
        });
      },
      failure: (e) {
        Utils.showToast(e.message);
        setState(() {
          _isLoading = false;
        });
        Navigator.pop(context);
      },
    );
  }
}
