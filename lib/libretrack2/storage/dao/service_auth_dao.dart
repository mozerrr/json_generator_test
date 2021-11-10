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

import 'package:floor/floor.dart';
import 'package:json_generator_test/libretrack/entity/converter/tracking_service_type_converter.dart';
import 'package:json_generator_test/libretrack/entity/service_auth.dart';
import 'package:json_generator_test/libretrack/entity/tracking_service.dart';

/// An unencrypted service authentication data storage.
/// For backward compatibility with platforms that
/// don't support encrypted storage, and for testing purposes
@TypeConverters([TrackingServiceTypeConverter])
@dao
abstract class ServiceAuthDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertData(List<AuthDataField> data);

  @Query('DELETE FROM AuthDataField WHERE serviceType = :serviceType')
  Future<void> deleteDataByServiceId(TrackingServiceType serviceType);

  @Query('SELECT * FROM AuthDataField WHERE serviceType = :serviceType')
  Future<List<AuthDataField>> getDataByServiceType(
    TrackingServiceType serviceType,
  );
}
