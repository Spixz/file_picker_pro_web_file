//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <file_picker_pro/file_picker_pro_plugin_c_api.h>
#include <open_share_plus/open_share_plus_plugin_c_api.h>
#include <url_launcher_windows/url_launcher_windows.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FilePickerProPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FilePickerProPluginCApi"));
  OpenSharePlusPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("OpenSharePlusPluginCApi"));
  UrlLauncherWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherWindows"));
}
