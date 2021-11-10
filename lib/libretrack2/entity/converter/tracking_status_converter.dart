// Copyright (C) 2021 Yaroslav Pronin <proninyaroslav@mail.ru>
// Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
//
// This file is part of LibreTrack.
//
// LibreTrack is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// LibreTrack is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.

import 'package:enum_to_string/enum_to_string.dart';
import 'package:floor/floor.dart';

import '../tracking_info.dart';

class TrackingStatusConverter extends TypeConverter<TrackingStatus, String> {
  @override
  TrackingStatus decode(String databaseValue) {
    return EnumToString.fromString(
      TrackingStatus.values,
      databaseValue,
    )!;
  }

  @override
  String encode(TrackingStatus value) {
    return EnumToString.convertToString(value);
  }
}

class NullableTrackingStatusConverter
    extends TypeConverter<TrackingStatus?, String?> {
  @override
  TrackingStatus? decode(String? databaseValue) {
    return databaseValue == null
        ? null
        : EnumToString.fromString(
            TrackingStatus.values,
            databaseValue,
          );
  }

  @override
  String? encode(TrackingStatus? value) {
    return value == null ? null : EnumToString.convertToString(value);
  }
}
