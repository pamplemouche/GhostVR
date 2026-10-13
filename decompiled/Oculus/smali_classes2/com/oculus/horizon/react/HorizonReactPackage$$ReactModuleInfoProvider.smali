.class public Lcom/oculus/horizon/react/HorizonReactPackage$$ReactModuleInfoProvider;
.super Ljava/lang/Object;
.source "HorizonReactPackage$$ReactModuleInfoProvider.java"

# interfaces
.implements Lcom/facebook/react/module/model/ReactModuleInfoProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReactModuleInfos()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/module/model/ReactModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 15
    const-string v8, "AccessibilityInfo"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "AccessibilityInfo"

    const-string v2, "com.facebook.react.modules.accessibilityinfo.AccessibilityInfoModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v8, "AppState"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "AppState"

    const-string v2, "com.facebook.react.modules.appstate.AppStateModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v8, "AsyncSQLiteDBStorage"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "AsyncSQLiteDBStorage"

    const-string v2, "com.facebook.react.modules.storage.AsyncStorageModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v8, "BuildInfo"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "BuildInfo"

    const-string v2, "com.facebook.catalyst.modules.fbinfo.BuildInfoModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v8, "CameraRollManager"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "CameraRollManager"

    const-string v2, "com.facebook.react.modules.camera.CameraRollManager"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v8, "Clipboard"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "Clipboard"

    const-string v2, "com.facebook.react.modules.clipboard.ClipboardModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v8, "CurrentViewer"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "CurrentViewer"

    const-string v2, "com.facebook.catalyst.modules.fbauth.CurrentViewerModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v8, "DatePickerAndroid"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "DatePickerAndroid"

    const-string v2, "com.facebook.react.modules.datepicker.DatePickerDialogModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v8, "DialogManagerAndroid"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "DialogManagerAndroid"

    const-string v2, "com.facebook.react.modules.dialog.DialogModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v8, "DeviceManager"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "DeviceManager"

    const-string v2, "com.facebook.catalyst.modules.devicemanager.DeviceManagerModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v8, "FBUserAgent"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "FBUserAgent"

    const-string v2, "com.facebook.catalyst.modules.useragent.FbUserAgentModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v8, "I18nManager"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "I18nManager"

    const-string v2, "com.facebook.react.modules.i18nmanager.I18nManagerModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v8, "ImageEditingManager"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "ImageEditingManager"

    const-string v2, "com.facebook.react.modules.camera.ImageEditingManager"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v8, "ImageLoader"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "ImageLoader"

    const-string v2, "com.facebook.react.modules.image.ImageLoaderModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v8, "ImageStoreManager"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "ImageStoreManager"

    const-string v2, "com.facebook.react.modules.camera.ImageStoreManager"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v8, "IntentAndroid"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "IntentAndroid"

    const-string v2, "com.facebook.react.modules.intent.IntentModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v8, "LocationObserver"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "LocationObserver"

    const-string v2, "com.facebook.react.modules.location.LocationModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v8, "NativeAnimatedModule"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "NativeAnimatedModule"

    const-string v2, "com.facebook.react.animated.NativeAnimatedModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v8, "Networking"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "Networking"

    const-string v2, "com.facebook.react.modules.network.NetworkingModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v8, "NetInfo"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "NetInfo"

    const-string v2, "com.facebook.catalyst.modules.netinfo.NetInfoModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v8, "PermissionsAndroid"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "PermissionsAndroid"

    const-string v2, "com.facebook.react.modules.permissions.PermissionsModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v8, "RelayAPIConfig"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "RelayAPIConfig"

    const-string v2, "com.facebook.catalyst.modules.fbauth.RelayAPIConfigModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v8, "StatusBarManager"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "StatusBarManager"

    const-string v2, "com.facebook.react.modules.statusbar.StatusBarModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v8, "TimePickerAndroid"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "TimePickerAndroid"

    const-string v2, "com.facebook.react.modules.timepicker.TimePickerDialogModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v8, "ToastAndroid"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "ToastAndroid"

    const-string v2, "com.facebook.react.modules.toast.ToastModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v8, "Vibration"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "Vibration"

    const-string v2, "com.facebook.react.modules.vibration.VibrationModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v8, "WebSocketModule"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "WebSocketModule"

    const-string v2, "com.facebook.react.modules.websocket.WebSocketModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v8, "I18nAssets"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "I18nAssets"

    const-string v2, "com.facebook.fbreact.i18n.FbReactI18nAssetsModule"

    move v4, v3

    move v5, v3

    move v6, v13

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v8, "I18n"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "I18n"

    const-string v2, "com.facebook.fbreact.i18n.FbReactI18nModule"

    move v4, v3

    move v5, v13

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v8, "Analytics"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "Analytics"

    const-string v2, "com.oculus.horizon.react.modules.HorizonAnalyticsModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v8, "ReactPerformanceLogger"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "ReactPerformanceLogger"

    const-string v2, "com.oculus.horizon.react.modules.HorizonPerfLoggerModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v8, "MobileConfigModule"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "MobileConfigModule"

    const-string v2, "com.oculus.horizon.react.modules.HorizonMobileConfigModule"

    move v4, v13

    move v5, v3

    move v6, v13

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v8, "Navigation"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "Navigation"

    const-string v2, "com.oculus.horizon.react.modules.HorizonReactNavigatorModule"

    move v4, v13

    move v5, v13

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "ExceptionsManager"

    new-instance v4, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v5, "ExceptionsManager"

    const-string v6, "com.oculus.horizon.react.modules.HorizonReactExceptionManager"

    move v7, v13

    move v8, v13

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v8, "HorizonLibraryModule"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "HorizonLibraryModule"

    const-string v2, "com.oculus.horizon.react.modules.OVRHorizonLibraryModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v8, "HorizonControllerModule"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "HorizonControllerModule"

    const-string v2, "com.oculus.horizon.react.modules.HorizonControllerModule"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v8, "RCTVideo"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "RCTVideo"

    const-string v2, "com.oculus.twilight.views.video.TwilightVideoManager"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v12
.end method
