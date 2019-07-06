# Prebuilt APKs

This is a collection of FOSS APKs, coupled with the respective Android.mk for an easy integration in the Android build system. These are just the official unmodified prebuilt binaries.
You can add them to your devices .mk file by using their name in PRODUCT_PACKAGES

for example microg with on device location backends and online adress translation:

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