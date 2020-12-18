package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.shim.ShimPluginRegistry;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    ShimPluginRegistry shimPluginRegistry = new ShimPluginRegistry(flutterEngine);
      com.fuyumi.flutterstatusbarcolor.flutterstatusbarcolor.FlutterStatusbarcolorPlugin.registerWith(shimPluginRegistry.registrarFor("com.fuyumi.flutterstatusbarcolor.flutterstatusbarcolor.FlutterStatusbarcolorPlugin"));
      com.example.materialsearchbar.materialsearchbar.MaterialSearchBarPlugin.registerWith(shimPluginRegistry.registrarFor("com.example.materialsearchbar.materialsearchbar.MaterialSearchBarPlugin"));
    flutterEngine.getPlugins().add(new io.flutter.plugins.pathprovider.PathProviderPlugin());
    flutterEngine.getPlugins().add(new com.tekartik.sqflite.SqflitePlugin());
  }
}
