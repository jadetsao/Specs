{
  "name": "SensorsAnalyticsSDK",
  "version": "1.7.1",
  "summary": "The offical iOS SDK of Sensors Analytics.",
  "homepage": "http://www.sensorsdata.cn",
  "source": {
    "git": "https://github.com/sensorsdata/sa-sdk-ios.git",
    "tag": "v1.7.1"
  },
  "license": {
    "type": "Apache License, Version 2.0"
  },
  "authors": {
    "Yuhan ZOU": "zouyuhan@sensorsdata.cn"
  },
  "platforms": {
    "ios": "7.0"
  },
  "default_subspecs": "core",
  "frameworks": [
    "UIKit",
    "Foundation",
    "SystemConfiguration",
    "CoreTelephony",
    "CoreGraphics",
    "QuartzCore"
  ],
  "libraries": [
    "icucore",
    "sqlite3",
    "z"
  ],
  "subspecs": [
    {
      "name": "core",
      "source_files": [
        "SensorsAnalyticsSDK/SensorsAnalyticsSDK",
        "SensorsAnalyticsSDK/SensorsAnalyticsSDK/*.{h,m}"
      ],
      "public_header_files": "SensorsAnalyticsSDK/SensorsAnalyticsSDK/SensorsAnalyticsSDK.h"
    },
    {
      "name": "IDFA",
      "dependencies": {
        "SensorsAnalyticsSDK/core": [

        ]
      },
      "pod_target_xcconfig": {
        "GCC_PREPROCESSOR_DEFINITIONS": "SENSORS_ANALYTICS_IDFA=1"
      }
    },
    {
      "name": "LOG",
      "dependencies": {
        "SensorsAnalyticsSDK/core": [

        ]
      },
      "pod_target_xcconfig": {
        "GCC_PREPROCESSOR_DEFINITIONS": "SENSORS_ANALYTICS_ENABLE_LOG=1"
      }
    },
    {
      "name": "DISABLE_CALL_STACK",
      "dependencies": {
        "SensorsAnalyticsSDK/core": [

        ]
      },
      "pod_target_xcconfig": {
        "GCC_PREPROCESSOR_DEFINITIONS": "SENSORS_ANALYTICS_DISABLE_CALL_STACK=1"
      }
    },
    {
      "name": "DISABLE_VTRACK",
      "dependencies": {
        "SensorsAnalyticsSDK/core": [

        ]
      },
      "pod_target_xcconfig": {
        "GCC_PREPROCESSOR_DEFINITIONS": "SENSORS_ANALYTICS_DISABLE_VTRACK=1"
      }
    }
  ]
}