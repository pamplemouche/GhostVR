.class public Lcom/facebook/react/CoreModulesPackage$$ReactModuleInfoProvider;
.super Ljava/lang/Object;
.source "CoreModulesPackage$$ReactModuleInfoProvider.java"

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
    .locals 15
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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 15
    const-string v8, "PlatformConstants"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "PlatformConstants"

    const-string v2, "com.facebook.react.modules.systeminfo.AndroidInfoModule"

    move v4, v3

    move v6, v3

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "DeviceEventManager"

    new-instance v6, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v7, "DeviceEventManager"

    const-string v8, "com.facebook.react.modules.core.DeviceEventManagerModule"

    move v9, v3

    move v10, v3

    move v11, v3

    move v12, v3

    move v13, v3

    invoke-direct/range {v6 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v8, "DeviceInfo"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "DeviceInfo"

    const-string v2, "com.facebook.react.modules.deviceinfo.DeviceInfoModule"

    move v4, v3

    move v6, v3

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v0, "DevSettings"

    new-instance v6, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v7, "DevSettings"

    const-string v8, "com.facebook.react.modules.debug.DevSettingsModule"

    move v9, v3

    move v10, v3

    move v11, v3

    move v12, v3

    move v13, v3

    invoke-direct/range {v6 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v0, "ExceptionsManager"

    new-instance v6, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v7, "ExceptionsManager"

    const-string v8, "com.facebook.react.modules.core.ExceptionsManagerModule"

    move v9, v3

    move v10, v3

    move v11, v3

    move v12, v3

    move v13, v3

    invoke-direct/range {v6 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v0, "HeadlessJsTaskSupport"

    new-instance v6, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v7, "HeadlessJsTaskSupport"

    const-string v8, "com.facebook.react.modules.core.HeadlessJsTaskSupportModule"

    move v9, v3

    move v10, v3

    move v11, v3

    move v12, v3

    move v13, v3

    invoke-direct/range {v6 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v8, "SourceCode"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "SourceCode"

    const-string v2, "com.facebook.react.modules.debug.SourceCodeModule"

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "Timing"

    new-instance v6, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v7, "Timing"

    const-string v8, "com.facebook.react.modules.core.Timing"

    move v9, v3

    move v10, v3

    move v11, v3

    move v12, v3

    move v13, v3

    invoke-direct/range {v6 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v8, "UIManager"

    new-instance v0, Lcom/facebook/react/module/model/ReactModuleInfo;

    const-string v1, "UIManager"

    const-string v2, "com.facebook.react.uimanager.UIManagerModule"

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    invoke-interface {v14, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-object v14
.end method
