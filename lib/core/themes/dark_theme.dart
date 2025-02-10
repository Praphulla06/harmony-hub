import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  // Color Scheme
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade800,   // Primary color (background or header)
    secondary: Colors.blueAccent,    // Secondary color (buttons, highlights)
    tertiary: Colors.greenAccent,    // Tertiary color (success states, extra UI elements)
    surface: Colors.grey.shade800,   // Color of card, button, or other surfaces
    onPrimary: Colors.white,         // Text or icons on primary color
    onSecondary: Colors.black,       // Text or icons on secondary color
    onSurface: Colors.white,         // Text or icons on surface color
    error: Colors.red,               // Error color (e.g., for form validation)
    onError: Colors.white,           // Text or icons on error color
  ),
  
  // Scaffold Background
  scaffoldBackgroundColor: Colors.grey.shade800,

  // App Bar Theme
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade900,  // AppBar background color
    iconTheme: IconThemeData(color: Colors.white),  // AppBar icons color
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),  // AppBar title text style
  ),

  // Text Theme (Typography)
  textTheme: TextTheme(
    headlineLarge: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
    titleLarge: TextStyle(color: Colors.grey.shade400, fontSize: 16, fontWeight: FontWeight.normal),
    titleMedium: TextStyle(color: Colors.grey.shade400, fontSize: 14, fontWeight: FontWeight.normal),
  ),

  // Icon Theme
  iconTheme: IconThemeData(
    color: Colors.white,  // Default icon color
    size: 24,             // Icon size
  ),

  // Button Theme (Flat and Raised buttons)
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent,  // Default button color
    textTheme: ButtonTextTheme.primary,  // Text color on the button
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),  // Rounded button corners
    ),
  ),

  // Elevated Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Colors.blueAccent,     // Text color on the button
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),  // Padding inside button
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),  // Rounded button corners
      ),
    ),
  ),

  // Floating Action Button Theme
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blueAccent,  // FAB background color
    foregroundColor: Colors.white,        // FAB icon color
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),  // Rounded corners
    ),
  ),

  // Divider Theme
  dividerTheme: DividerThemeData(
    color: Colors.grey.shade700,  // Divider color
    thickness: 1,                 // Divider thickness
    space: 20,                    // Space around the divider
  ),

  // Input Decoration Theme (Text Fields)
  inputDecorationTheme: InputDecorationTheme(
    filled: true,                         // Input field background color
    fillColor: Colors.grey.shade700,      // Input field background color
    border: OutlineInputBorder(           // Border around input field
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade600),
    ),
    focusedBorder: OutlineInputBorder(    // Border when input is focused
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.blueAccent),
    ),
    labelStyle: TextStyle(color: Colors.white),  // Label text style
    hintStyle: TextStyle(color: Colors.grey.shade400), // Hint text style
  ),

  // Slider Theme (for sliders)
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.blueAccent,    // Active track color
    inactiveTrackColor: Colors.grey.shade600,  // Inactive track color
    thumbColor: Colors.blueAccent,           // Thumb color
    overlayColor: Colors.blueAccent.withOpacity(0.2),  // Overlay color
    valueIndicatorColor: Colors.blueAccent,  // Value indicator color
  ),

  // Tooltip Theme
  tooltipTheme: TooltipThemeData(
    decoration: BoxDecoration(
      color: Colors.blueAccent,  // Tooltip background color
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: TextStyle(color: Colors.white),  // Tooltip text color
  ),
);
