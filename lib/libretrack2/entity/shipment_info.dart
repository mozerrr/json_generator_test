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

import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:json_generator_test/libretrack/entity/postal_service.dart';
import 'package:json_generator_test/libretrack/entity/track_number_info.dart';
import 'package:json_generator_test/libretrack/entity/unit_of_measurement.dart';

import 'address.dart';
import 'converter/converter.dart';
import 'currency.dart';

@TypeConverters([
  PostalServiceTypeConverter,
  NullableDateTimeConverter,
  NullableMeasurementConverter,
])
@Entity(
  foreignKeys: [
    ForeignKey(
      entity: TrackNumberInfo,
      childColumns: ['trackNumber'],
      parentColumns: ['trackNumber'],
      onDelete: ForeignKeyAction.cascade,
    ),
  ],
)
class ShipmentInfo extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String trackNumber;

  final PostalServiceType serviceType;

  /// For example, 'UPS Standard'
  final String? serviceDescription;

  /// For example, 'Small Package'
  final String? shipmentDescription;

  final String? signedForByName;

  @ignore
  final UnitOfMeasurement? weight;

  @ignore
  final UnitOfMeasurement? volume;

  final DateTime? pickupDate;

  final DateTime? deliveryDate;

  final DateTime? estimatedDeliveryDate;

  final DateTime? scheduledDeliveryDate;

  @ignore
  final Currency? cashOnDelivery;

  @ignore
  final Address? shipperAddress;

  @ignore
  final Address? receiverAddress;

  /// Any additional message that a service sent along with tracking information,
  /// for example, a warning or information
  final String? serviceMessage;

  @ignore
  final Currency? declaredValue;

  @ignore
  final Currency? customDuty;

  @ignore
  final Currency? additionalRateFee;

  @ignore
  final Currency? shippingRateFee;

  @ignore
  final Currency? insuranceRateFee;

  final String? shipperName;

  final String? receiverName;

  // TODO: remove it; wait for @Embedded
  ShipmentInfo({
    this.id,
    required this.trackNumber,
    required this.serviceType,
    this.serviceDescription,
    this.shipmentDescription,
    this.signedForByName,
    this.serviceMessage,
    this.pickupDate,
    this.deliveryDate,
    this.estimatedDeliveryDate,
    this.scheduledDeliveryDate,
    this.shipperName,
    this.receiverName,
    // ignore: non_constant_identifier_names
    this.weightValue_,
    // ignore: non_constant_identifier_names
    this.weightMeasurement_,
    // ignore: non_constant_identifier_names
    this.volumeValue_,
    // ignore: non_constant_identifier_names
    this.volumeMeasurement_,
    // ignore: non_constant_identifier_names
    this.cashOnDeliveryValue_,
    // ignore: non_constant_identifier_names
    this.cashOnDeliveryCurrencyCode_,
    // ignore: non_constant_identifier_names
    this.shipperLocation_,
    // ignore: non_constant_identifier_names
    this.shipperPostalCode_,
    // ignore: non_constant_identifier_names
    this.shipperCountryCode_,
    // ignore: non_constant_identifier_names
    this.receiverLocation_,
    // ignore: non_constant_identifier_names
    this.receiverPostalCode_,
    // ignore: non_constant_identifier_names
    this.receiverCountryCode_,
    // ignore: non_constant_identifier_names
    this.declaredValueValue_,
    // ignore: non_constant_identifier_names
    this.declaredValueCurrencyCode_,
    // ignore: non_constant_identifier_names
    this.customDutyValue_,
    // ignore: non_constant_identifier_names
    this.customDutyCurrencyCode_,
    // ignore: non_constant_identifier_names
    this.additionalRateFeeValue_,
    // ignore: non_constant_identifier_names
    this.additionalRateFeeCurrencyCode_,
    // ignore: non_constant_identifier_names
    this.shippingRateFeeValue_,
    // ignore: non_constant_identifier_names
    this.shippingRateFeeCurrencyCode_,
    // ignore: non_constant_identifier_names
    this.insuranceRateFeeValue_,
    // ignore: non_constant_identifier_names
    this.insuranceRateFeeCurrencyCode_,
  })  : cashOnDelivery =
            cashOnDeliveryValue_ == null || cashOnDeliveryCurrencyCode_ == null
                ? null
                : Currency(cashOnDeliveryValue_, cashOnDeliveryCurrencyCode_),
        shipperAddress = shipperLocation_ == null &&
                shipperPostalCode_ == null &&
                shipperCountryCode_ == null
            ? null
            : Address(
                location: shipperLocation_,
                postalCode: shipperPostalCode_,
                countryCode: shipperCountryCode_,
              ),
        receiverAddress = receiverLocation_ == null &&
                receiverPostalCode_ == null &&
                receiverCountryCode_ == null
            ? null
            : Address(
                location: receiverLocation_,
                postalCode: receiverPostalCode_,
                countryCode: receiverCountryCode_,
              ),
        weight = weightValue_ == null || weightMeasurement_ == null
            ? null
            : UnitOfMeasurement(
                value: weightValue_,
                measurement: weightMeasurement_,
              ),
        volume = volumeValue_ == null || volumeMeasurement_ == null
            ? null
            : UnitOfMeasurement(
                value: volumeValue_,
                measurement: volumeMeasurement_,
              ),
        declaredValue =
            declaredValueValue_ == null || declaredValueCurrencyCode_ == null
                ? null
                : Currency(declaredValueValue_, declaredValueCurrencyCode_),
        customDuty = customDutyValue_ == null || customDutyCurrencyCode_ == null
            ? null
            : Currency(customDutyValue_, customDutyCurrencyCode_),
        additionalRateFee = additionalRateFeeValue_ == null ||
                additionalRateFeeCurrencyCode_ == null
            ? null
            : Currency(additionalRateFeeValue_, additionalRateFeeCurrencyCode_),
        shippingRateFee = shippingRateFeeValue_ == null ||
                shippingRateFeeCurrencyCode_ == null
            ? null
            : Currency(shippingRateFeeValue_, shippingRateFeeCurrencyCode_),
        insuranceRateFee = insuranceRateFeeValue_ == null ||
                insuranceRateFeeCurrencyCode_ == null
            ? null
            : Currency(insuranceRateFeeValue_, insuranceRateFeeCurrencyCode_);

  ShipmentInfo.from({
    this.id,
    required this.trackNumber,
    required this.serviceType,
    this.serviceDescription,
    this.shipmentDescription,
    this.signedForByName,
    this.weight,
    this.volume,
    this.pickupDate,
    this.deliveryDate,
    this.estimatedDeliveryDate,
    this.scheduledDeliveryDate,
    this.cashOnDelivery,
    this.shipperAddress,
    this.receiverAddress,
    this.serviceMessage,
    this.declaredValue,
    this.customDuty,
    this.additionalRateFee,
    this.shippingRateFee,
    this.insuranceRateFee,
    this.shipperName,
    this.receiverName,
  })  : cashOnDeliveryValue_ = cashOnDelivery?.value,
        cashOnDeliveryCurrencyCode_ = cashOnDelivery?.currencyCode,
        shipperLocation_ = shipperAddress?.location,
        shipperPostalCode_ = shipperAddress?.postalCode,
        shipperCountryCode_ = shipperAddress?.countryCode,
        receiverLocation_ = receiverAddress?.location,
        receiverPostalCode_ = receiverAddress?.postalCode,
        receiverCountryCode_ = receiverAddress?.countryCode,
        weightValue_ = weight?.value,
        weightMeasurement_ = weight?.measurement,
        volumeValue_ = volume?.value,
        volumeMeasurement_ = volume?.measurement,
        declaredValueValue_ = declaredValue?.value,
        declaredValueCurrencyCode_ = declaredValue?.currencyCode,
        customDutyValue_ = customDuty?.value,
        customDutyCurrencyCode_ = customDuty?.currencyCode,
        additionalRateFeeValue_ = additionalRateFee?.value,
        additionalRateFeeCurrencyCode_ = additionalRateFee?.currencyCode,
        shippingRateFeeValue_ = shippingRateFee?.value,
        shippingRateFeeCurrencyCode_ = shippingRateFee?.currencyCode,
        insuranceRateFeeValue_ = insuranceRateFee?.value,
        insuranceRateFeeCurrencyCode_ = insuranceRateFee?.currencyCode;

  @override
  List<Object?> get props => [
        id,
        trackNumber,
        serviceType,
        serviceDescription,
        shipmentDescription,
        signedForByName,
        weight,
        volume,
        pickupDate,
        deliveryDate,
        estimatedDeliveryDate,
        scheduledDeliveryDate,
        cashOnDelivery,
        shipperAddress,
        receiverAddress,
        serviceMessage,
        declaredValue,
        customDuty,
        additionalRateFee,
        shippingRateFee,
        insuranceRateFee,
        shipperName,
        receiverName,
      ];

  @override
  bool get stringify => true;

  // TODO: remove it; wait for @Embedded
  //===================================================
  @ColumnInfo(name: 'cashOnDelivery_value')
  // ignore: non_constant_identifier_names
  final double? cashOnDeliveryValue_;

  @ColumnInfo(name: 'cashOnDelivery_currencyCode')
  // ignore: non_constant_identifier_names
  final String? cashOnDeliveryCurrencyCode_;

  @ColumnInfo(name: 'shipper_location')
  // ignore: non_constant_identifier_names
  final String? shipperLocation_;

  @ColumnInfo(name: 'shipper_postalCode')
  // ignore: non_constant_identifier_names
  final String? shipperPostalCode_;

  @ColumnInfo(name: 'shipper_countryCode')
  // ignore: non_constant_identifier_names
  final String? shipperCountryCode_;

  @ColumnInfo(name: 'receiver_location')
  // ignore: non_constant_identifier_names
  final String? receiverLocation_;

  @ColumnInfo(name: 'receiver_postalCode')
  // ignore: non_constant_identifier_names
  final String? receiverPostalCode_;

  @ColumnInfo(name: 'receiver_countryCode')
  // ignore: non_constant_identifier_names
  final String? receiverCountryCode_;

  @ColumnInfo(name: 'weight_Value')
  // ignore: non_constant_identifier_names
  final double? weightValue_;

  @ColumnInfo(name: 'weight_Measurement')
  // ignore: non_constant_identifier_names
  final Measurement? weightMeasurement_;

  @ColumnInfo(name: 'volume_Value')
  // ignore: non_constant_identifier_names
  final double? volumeValue_;

  @ColumnInfo(name: 'volume_Measurement')
  // ignore: non_constant_identifier_names
  final Measurement? volumeMeasurement_;

  @ColumnInfo(name: 'declaredValue_value')
  // ignore: non_constant_identifier_names
  final double? declaredValueValue_;

  @ColumnInfo(name: 'declaredValue_currencyCode')
  // ignore: non_constant_identifier_names
  final String? declaredValueCurrencyCode_;

  @ColumnInfo(name: 'customDuty_value')
  // ignore: non_constant_identifier_names
  final double? customDutyValue_;

  @ColumnInfo(name: 'customDuty_currencyCode')
  // ignore: non_constant_identifier_names
  final String? customDutyCurrencyCode_;

  @ColumnInfo(name: 'additionalRateFee_value')
  // ignore: non_constant_identifier_names
  final double? additionalRateFeeValue_;

  @ColumnInfo(name: 'additionalRateFee_currencyCode')
  // ignore: non_constant_identifier_names
  final String? additionalRateFeeCurrencyCode_;

  @ColumnInfo(name: 'shippingRateFee_value')
  // ignore: non_constant_identifier_names
  final double? shippingRateFeeValue_;

  @ColumnInfo(name: 'shippingRateFee_currencyCode')
  // ignore: non_constant_identifier_names
  final String? shippingRateFeeCurrencyCode_;

  @ColumnInfo(name: 'insuranceRateFee_value')
  // ignore: non_constant_identifier_names
  final double? insuranceRateFeeValue_;

  @ColumnInfo(name: 'insuranceRateFee_currencyCode')
  // ignore: non_constant_identifier_names
  final String? insuranceRateFeeCurrencyCode_;
}
