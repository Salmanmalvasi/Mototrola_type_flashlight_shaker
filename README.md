# Shake Flashlight

An Android app that turns on the flashlight when you shake your phone twice, even when the screen is locked.

## Features

- Shake to toggle flashlight: Shake your phone twice to turn the flashlight on or off.
- Works on lock screen: The shake detection works even when your phone is locked.
- Vibration feedback: The phone vibrates when the flashlight is toggled.
- Adjustable sensitivity: The shake detection sensitivity can be adjusted.

## How to Use

1.  Install the app on your Android device.
2.  Open the app and grant the required permissions (Camera).
3.  Click the "Start Service" button.
4.  The app will now run in the background. Shake your phone twice to toggle the flashlight.
5.  To stop the service, open the app and click the "Stop Service" button.

## Building and Releasing

### Building Locally

1. Clone the repository
2. Run `./gradlew assembleRelease` to build the signed APK
3. The signed APK will be available at `app/build/outputs/apk/release/app-release.apk`

### Creating a GitHub Release

1. Go to the GitHub repository page
2. Click on "Releases" in the right sidebar
3. Click "Create a new release"
4. Enter a tag version (e.g., v1.0.0)
5. Enter a release title and description
6. Upload the signed APK file from `app/build/outputs/apk/release/app-release.apk`
7. Click "Publish release"

### CI/CD with GitHub Actions

This project includes a GitHub Actions workflow that automatically:
1. Builds the app when code is pushed to the main branch
2. Creates a signed APK when a new release is created
3. Attaches the APK to the GitHub release

To use the CI/CD pipeline, you need to add the following secrets to your GitHub repository:
- `KEYSTORE_BASE64`: The keystore file encoded as base64
- `SIGNING_KEY_ALIAS`: The key alias (pulkit_shake)
- `SIGNING_KEY_PASSWORD`: The key password
- `SIGNING_STORE_PASSWORD`: The keystore password
