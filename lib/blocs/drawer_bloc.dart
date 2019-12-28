import 'package:rxdart/subjects.dart';

class DrawerBloc {
  final BehaviorSubject<int> _pageController = BehaviorSubject<int>.seeded(0);

  Stream<int> get outPage => _pageController.stream;

  int _page;
  void setPage(int page) {
    if (_page == page) return;
    _pageController.add(page);
  }

  void dispose() {
    _pageController.close();
  }
}
