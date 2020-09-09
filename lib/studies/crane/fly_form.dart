// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/crane/backlayer.dart';
import 'package:gallery/studies/crane/header_form.dart';

class FlyForm extends BackLayerItem {
  const FlyForm() : super(index: 0);

  @override
  _FlyFormState createState() => _FlyFormState();
}

class _FlyFormState extends State<FlyForm> {
  final travelerController = TextEditingController();
  final countryDestinationController = TextEditingController();
  final destinationController = TextEditingController();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return HeaderForm(
      fields: <HeaderFormField>[
        HeaderFormField(
          index: 0,
          iconData: Icons.credit_card, // Icons.person,
          title: 'Loại bằng',
          // GalleryLocalizations.of(context).craneFormTravelers,
          textController: travelerController,
        ),
        HeaderFormField(
          index: 1,
          iconData: Icons.place,
          title: 'Địa điểm',
          // GalleryLocalizations.of(context).craneFormOrigin,
          textController: countryDestinationController,
        ),
        HeaderFormField(
          index: 2,
          iconData: Icons.drive_eta, // Icons.airplanemode_active,
          title: 'Loại xe',
          // GalleryLocalizations.of(context).craneFormDestination,
          textController: destinationController,
        ),
        HeaderFormField(
          index: 3,
          iconData: Icons.date_range,
          title: 'Ngày bắt đầu',
          // GalleryLocalizations.of(context).craneFormDates,
          textController: dateController,
        ),
      ],
    );
  }
}
