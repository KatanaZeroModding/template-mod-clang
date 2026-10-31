#ifndef KZM_PLUGIN_H
#define KZM_PLUGIN_H

#ifdef _WIN32
  #ifdef KZM_PLUGIN_EXPORTS
    #define KZM_API __declspec(dllexport)
  #else
    #define KZM_API __declspec(dllimport)
  #endif
#else
  #define KZM_API
#endif

#ifdef __cplusplus
extern "C" {
#endif

KZM_API int KZM_PluginInit(const char *mod_id);

#ifdef __cplusplus
}
#endif

#endif
