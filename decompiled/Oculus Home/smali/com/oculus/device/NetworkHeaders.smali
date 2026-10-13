.class public Lcom/oculus/device/NetworkHeaders;
.super Ljava/lang/Object;
.source "NetworkHeaders.java"


# static fields
.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeaderMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oculus/device/NetworkHeaders;->getHeaders(Landroid/content/Context;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;

    move-result-object v0

    .line 38
    .local v0, "headers":Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Accept-Language"

    iget-object v3, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->Accept_Language:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v2, "User-Agent"

    iget-object v3, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->User_Agent:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "X-ANDROID-ID"

    iget-object v3, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_ANDROID_ID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v2, "X-Build-Model"

    iget-object v3, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_Build_Model:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, "X-Build-Number"

    iget-object v3, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_Build_Number:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v2, "X-OC-Selected-Headset-Serial"

    iget-object v3, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_OC_Selected_Headset_Serial:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "X-OC-VrShell-Build-Name"

    iget-object v3, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_OC_VrShell_Build_Name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object v1
.end method

.method public static getHeaders(Landroid/content/Context;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;-><init>()V

    .line 52
    .local v0, "headers":Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;
    invoke-static {p0}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->Accept_Language:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/oculus/device/NetworkHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->User_Agent:Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_ANDROID_ID:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_Build_Model:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v1

    iget v1, v1, Lcom/oculus/panellib/AppDetails;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_Build_Number:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceSerial()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_OC_Selected_Headset_Serial:Ljava/lang/String;

    .line 58
    const-string v1, "com.oculus.vrshell"

    invoke-static {p0, v1}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_OC_VrShell_Build_Name:Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/device/NetworkHeaders;->sUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call init before calling NetworkHeaders.getUserAgent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    sget-object v0, Lcom/oculus/device/NetworkHeaders;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/oculus/device/IUserAgentBuilder;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAgentBuilder"    # Lcom/oculus/device/IUserAgentBuilder;
    .param p2, "mobileAppName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 16
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v8

    .line 18
    .local v8, "details":Lcom/oculus/panellib/AppDetails;
    const-string v0, "http.agent"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v8, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    iget v0, v8, Lcom/oculus/panellib/AppDetails;->versionCode:I

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {p0}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    .line 18
    invoke-interface/range {v0 .. v7}, Lcom/oculus/device/IUserAgentBuilder;->build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/device/NetworkHeaders;->sUserAgent:Ljava/lang/String;

    .line 27
    return-void
.end method
