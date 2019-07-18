# Prebuilt APKs

This is a collection of FOSS APKs, coupled with the respective Android.mk for an easy integration in the Android build system. These are just the official unmodified prebuilt binaries. In case from microg from the microg website, in other cases from fdroid to allow update via fdroid. The microg repository is added to fdroid to allow updates if needed.

This was created for my personal use.

You can add them to a device .mk file by using their name in PRODUCT_PACKAGES
For example microg with on device location backends and online adress translation:

PRODUCT_PACKAGES += \
   GmsCore \
   FakeStore \
   GsfProxy \
   OpenCamera \
   FDroid \
   DejaVuNlpBackend \
   NominatimNlpBackend \
   LocalGSMNlpBackend \
   WLANNlpBackend


* FDroid: Client for FDroid repository. Includes additionally the microg repository
* OpenCamera: Replaces AOSP Camera2
* Microg base (GmsCore, FakeStore, GsfProxy) to mimic google services framework
* Multiple UnifiedNlp backends to choose from:
   * DejaVu, LocalGSM, WLAN backends are completely on device
   * Mozilla and Apple backends use the respecive online databases
   * Nominatim backend using the MapQuest online service for adress location
* BromiteSystemWebView to replace regular AOSP webview

Thanks for inspiration and code
- Romain Hunault (https://gitlab.e.foundation/e/os/android_prebuilts_prebuiltapks)
- Lineageos 4microg (https://github.com/lineageos4microg/android_prebuilts_prebuiltapks)
- Nanolx (https://gitlab.com/Nanolx/NanoDroid)
- ale5000 (https://github.com/micro5k/microg-unofficial-installer)
