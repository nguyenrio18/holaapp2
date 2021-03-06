// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/studies/crane/backlayer.dart';
import 'package:gallery/studies/crane/header_form.dart';

class SleepForm extends BackLayerItem {
  const SleepForm() : super(index: 1);

  @override
  _SleepFormState createState() => _SleepFormState();
}

class _SleepFormState extends State<SleepForm> {
  final travelerController = TextEditingController();
  final dateController = TextEditingController();
  final locationController = TextEditingController();

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
          iconData: Icons.date_range,
          title: 'Ngày bắt đầu',
          // GalleryLocalizations.of(context).craneFormDates,
          textController: dateController,
        ),
        HeaderFormField(
          index: 2,
          iconData: Icons.drive_eta, // Icons.hotel,
          title: 'Loại xe',
          // GalleryLocalizations.of(context).craneFormLocation,
          textController: locationController,
        ),
      ],
    );
  }
}
