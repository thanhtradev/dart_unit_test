# This is Unit Test for the project

## How to run

1. Install the dependencies

    ```flutter pub get```

2. Build runner

    ```flutter pub run build_runner build```

3. Run the test

    ```flutter test```

## Project Structure

```bash
.
├── analysis_options.yaml
├── lib
│   ├── app.dart
│   ├── features
│   │   └── universities_feed
│   │       ├── data
│   │       │   ├── repository
│   │       │   │   └── university_repository_impl.dart
│   │       │   └── source
│   │       │       ├── local
│   │       │       │   ├── hive
│   │       │       │   │   └── university_hive.dart
│   │       │       │   └── model
│   │       │       │       └── hive_university_model.dart
│   │       │       ├── network
│   │       │       │   ├── endpoint
│   │       │       │   │   └── university_endpoint.dart
│   │       │       │   └── model
│   │       │       │       └── api_university_model.dart
│   │       │       ├── university_local_data_source.dart
│   │       │       └── university_remote_data_source.dart
│   │       ├── domain
│   │       │   ├── entity
│   │       │   │   └── university.dart
│   │       │   ├── repository
│   │       │   │   └── untiversities_repository.dart
│   │       │   └── usecase
│   │       │       └── get_universities_by_country_use_case.dart
│   │       └── presentation
│   │           ├── models
│   │           │   ├── university_screen_model.dart
│   │           │   └── university_screen_state.dart
│   │           └── screen
│   │               ├── universities_screen.dart
│   │               ├── universities_screen_manual_subscription.dart
│   │               └── universities_view_model.dart
│   ├── main.dart
│   ├── network_config
│   │   ├── api_error.dart
│   │   ├── app_result.dart
│   │   ├── error_convertor.dart
│   │   ├── json_api_response.dart
│   │   └── retrofit_client.dart
│   └── utils
│       ├── app_config.dart
│       └── extensions
│           ├── future_extensions.dart
│           ├── iterable_extensions.dart
│           └── map_extensions.dart
├── screenshot
│   ├── network_interceptor.jpg
│   └── workflow.jpg
├── test
│   └── unit_test
│       ├── network_config
│       │   └── mock_interceptor
│       │       └── dio_mock_responses_adapter.dart
│       └── universities_feed
│           └── data
│               └── source
│                   ├── local
│                   │   └── hive
│                   │       └── university_hive_test.dart
│                   └── network
│                       ├── endpoint
│                       │   └── university_endpoint_test.dart
│                       ├── model
│                       │   └── api_university_model_test.dart
│                       ├── university_remote_data_source_test.dart
│                       └── university_remote_data_source_test.mocks.dart
├── universities.hive
└── universities.lock
```

## Code flow

* Code flow is in the `lib` folder

![Code flow](https://github.com/thanhtradev/dart_unit_test/blob/main/screenshot/workflow.jpg)

#### Connect me via: thanhtra2001.stt@gmail.com
#### Copyright &#169; 2022 by thanhtradev
