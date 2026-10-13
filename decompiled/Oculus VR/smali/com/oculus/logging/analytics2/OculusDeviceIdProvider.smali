.class Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;
.super Ljava/lang/Object;
.source "OculusDeviceIdProvider.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/DeviceIdProvider;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private cachedDeviceID:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private settingsManager:Lcom/oculus/os/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/oculus/os/SettingsManager;

    iget-object v1, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oculus/os/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->settingsManager:Lcom/oculus/os/SettingsManager;

    .line 29
    return-void
.end method

.method private static ensureNonNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private generateNewDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/facebook/analytics2/logger/UniqueDeviceIdProvider;

    iget-object v3, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/facebook/analytics2/logger/UniqueDeviceIdProvider;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-interface {v0}, Lcom/facebook/analytics2/logger/DeviceIdProvider;->get()Ljava/lang/String;

    move-result-object v3

    .line 67
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v4, 0x9

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->settingsManager:Lcom/oculus/os/SettingsManager;

    const-string v4, "marauder_device_id"

    .line 69
    invoke-virtual {v0, v4, v3}, Lcom/oculus/os/SettingsManager;->setString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 70
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->TAG:Ljava/lang/String;

    const-string v1, "Wrote device ID \"%s\" to settings"

    iget-object v2, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :goto_1
    return-object v3

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write device ID \"%s\" to settings"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->ensureNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 39
    :cond_0
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    .line 40
    sget-object v0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->TAG:Ljava/lang/String;

    const-string v1, "Could not fetch device ID because OSSDK version %d is too old"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 40
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->generateNewDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->TAG:Ljava/lang/String;

    const-string v1, "SettingsManager didn\'t have a device ID. Generated %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->ensureNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->settingsManager:Lcom/oculus/os/SettingsManager;

    const-string v1, "marauder_device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/os/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->TAG:Ljava/lang/String;

    const-string v1, "Retrieved device ID \"%s\" from SettingsManager"

    iget-object v2, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->cachedDeviceID:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/logging/analytics2/OculusDeviceIdProvider;->ensureNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
