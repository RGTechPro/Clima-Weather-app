package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.byneapp.flutter_config.FlutterConfigPlugin;
import com.baseflow.geolocator.GeolocatorPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterConfigPlugin.registerWith(registry.registrarFor("com.byneapp.flutter_config.FlutterConfigPlugin"));
    GeolocatorPlugin.registerWith(registry.registrarFor("com.baseflow.geolocator.GeolocatorPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
