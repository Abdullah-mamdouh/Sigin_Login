


class OnBoardModel {
  String _backgraond;
  String _title;
  String _description;

  OnBoardModel(this._backgraond,this._title,this._description);

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get backgraond => _backgraond;

  set backgraond(String value) {
    _backgraond = value;
  }

}
