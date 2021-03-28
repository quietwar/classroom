import 'package:classroom/core/Models/Announcement.dart';
import 'package:classroom/core/enums/ViewState.dart';
import 'package:classroom/core/services/AnnouncementServices.dart';
import 'package:classroom/core/viewmodel/BaseModel.dart';
import 'package:classroom/locator.dart';

class CreateAnnouncementModel extends BaseModel {
  AnnouncementServices announcementServices = locator<AnnouncementServices>();

  getUserData() async {
    setState(ViewState.Busy);
    await announcementServices.init();
    setState(ViewState.Idle);
  }

  Future postAnnouncement(Announcement announcement) async {
    setState(ViewState.Busy);
    await announcementServices.postAnnouncement(announcement);
    setState(ViewState.Idle);
  }

  // @override
  // void dispose() {
  //   if (state == ViewState.Idle && state2 == ViewState.Idle) {
  //     super.dispose();
  //   }
  // }
}
