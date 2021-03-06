// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Only put constants shared between files here.

// height of the 'Gallery' header
const double galleryHeaderHeight = 64;

// The font size delta for headline4 font.
const double desktopDisplay1FontDelta = 16;

// The width of the settingsDesktop.
const double desktopSettingsWidth = 520;

// Sentinel value for the system text scale factor option.
const double systemTextScaleFactorOption = -1;

// The splash page animation duration.
const splashPageAnimationDurationInMilliseconds = 300;

// The desktop top padding for a page's first header (e.g. Gallery, Settings)
const firstHeaderDesktopTopPadding = 5.0;

// ***** MY CONSTANTS *****
enum Environment { dev, prod }

class Constants {
  static final Environment env = Environment.prod;
  static final String words = '94QAvZvrdGQBmKG0KUVoncS0KMJ3';
  static final String version = '0.0.1';
  static final String urlApi = env == Environment.dev
      ? 'http://localhost:1337/graphql'
      : 'http://holaadmin.fullstack8.com:1337/graphql';
}
