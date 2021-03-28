import 'package:classroom/core/Models/holiday_data.dart';
import 'package:classroom/core/helpers/shared_preferences_helper.dart';
import 'package:classroom/locator.dart';
import 'calendarific_ApiCaller.dart';

class RepositoryCalendarific {
  final _calendarificProvider = CalendarificApiCall();
  final _sharedPreferencesHelper = locator<SharedPreferencesHelper>();

  Future<HolidayData> getHolidays(String countryCode) =>
      _calendarificProvider.getHolidays(countryCode);

  Future<String> getCountryCode() => _sharedPreferencesHelper.getCountryCode();

  setCountryCode(String countryCode) =>
      _sharedPreferencesHelper.setCountryCode(countryCode);

  Future<String> getCountryName() => _sharedPreferencesHelper.getCountryName();

  setCountryName(String countryName) =>
      _sharedPreferencesHelper.setCountryName(countryName);
}
