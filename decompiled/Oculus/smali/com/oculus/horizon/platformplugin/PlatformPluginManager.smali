.class public Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
.super Ljava/lang/Object;
.source "PlatformPluginManager.java"

# interfaces
.implements Lcom/oculus/auth/handler/LogoutHandler;
.implements Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingNativeLoadLibrary"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;,
        Lcom/oculus/horizon/platformplugin/PlatformPluginManager$PartyChatConnectionReason;,
        Lcom/oculus/horizon/platformplugin/PlatformPluginManager$MultiwayConnectionState;,
        Lcom/oculus/horizon/platformplugin/PlatformPluginManager$MicrophoneMuteState;,
        Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHITELIST_PASSTHROUGH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITELIST_SYSTEM_VOIP_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

.field mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/util/WeakRef",
            "<",
            "Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mConnectionsLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

.field private mInitialized:Z

.field private final mInitializedLock:Ljava/lang/Object;

.field private final mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

.field private final mNativeCodeLock:Ljava/lang/Object;

.field private final mNotificationBuilder:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

.field private final mPartiesStateLock:Ljava/lang/Object;

.field private final mPartyChatReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

.field private mPartyChatStarted:Z

.field mReaper:Ljava/util/Timer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mReaperLock:Ljava/lang/Object;

.field private final mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

.field private mSystemVoipDisabled:Z

.field private final mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

.field private final mUnlockulusHelper:Lcom/oculus/unlockulus_helper/UnlockulusHelper;

.field private final mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

.field private final mVRLifecycleManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

.field private final mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

.field private final mVrStateManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 167
    const-class v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "1101959559889232"

    const-string v2, "com.oculus.rooms"

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "1031607236937163"

    const-string v2, "com.oculus.vrshell"

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "882179625204268"

    const-string v2, "com.oculus.hackulus"

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->WHITELIST_PASSTHROUGH:Ljava/util/Map;

    .line 217
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.oculus.home"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.oculus.horizon"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.oculus.rooms"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.oculus.systemactivities"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.oculus.systemactivities"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.oculus.venues"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.oculus.vrshell"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.oculus.vrshell.home"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.oculus.hackulus"

    aput-object v3, v1, v2

    .line 219
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->WHITELIST_SYSTEM_VOIP_PACKAGES:Ljava/util/HashSet;

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/vr/VRStateManager;Lcom/oculus/horizon/profile/UserProfileHelper;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;Lcom/oculus/horizon/logging/OculusLogger;Lcom/oculus/util/device/DeviceUtils;Lcom/oculus/horizon/social/SocialMethods;Lcom/oculus/horizon/notifications/core/NotificationBuilder;Lcom/facebook/mobileconfig/factory/MobileConfig;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitializedLock:Ljava/lang/Object;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mConnectionsLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartiesStateLock:Ljava/lang/Object;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVrStateManagerLock:Ljava/lang/Object;

    .line 177
    iput-boolean v3, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitialized:Z

    .line 178
    iput-boolean v3, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatStarted:Z

    .line 179
    iput-boolean v3, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mSystemVoipDisabled:Z

    .line 180
    iput-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaperLock:Ljava/lang/Object;

    .line 196
    iput-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaper:Ljava/util/Timer;

    .line 230
    new-instance v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.oculus.horizon.RUN_PARTY_CHAT_ENFORCER"

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$1;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 396
    iput-object p1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    .line 397
    iput-object p2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    .line 398
    iput-object p3, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    .line 399
    iput-object p4, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRLifecycleManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    .line 400
    iput-object p5, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 401
    iput-object p6, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    .line 402
    iput-object p7, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    .line 403
    iput-object p8, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNotificationBuilder:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    .line 404
    iput-object p9, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    .line 405
    new-instance v0, Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    invoke-direct {v0}, Lcom/oculus/unlockulus_helper/UnlockulusHelper;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mUnlockulusHelper:Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    .line 406
    invoke-direct {p0, p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getAppSignatures(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createTrustedApp(Ljava/util/Set;)Lcom/facebook/secure/trustedapp/TrustedApp;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    .line 408
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->loadPlatformLibraries()V

    .line 409
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->onHeadphonesStateChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Z)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetHeadsetMountState(Z)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativePartyChatStop()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeTearDown()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartiesStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatStarted:Z

    return v0
.end method

.method private checkInitError()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 753
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    const-string v1, "PlatformPlugin not initialized"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 757
    :cond_0
    return-object v0
.end method

.method private checkInitErrorQuiet()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    const-string v0, "PlatformPlugin not initialized"

    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResultQuiet(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 765
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkInitErrorX()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;

    const-string v1, "PlatformPlugin not initialized"

    invoke-direct {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_0
    return-void
.end method

.method private connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;Z)V
    .locals 3

    .prologue
    .line 522
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mConnectionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    if-nez p1, :cond_0

    .line 524
    :try_start_0
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Null client, not initing"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    monitor-exit v1

    .line 558
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Empty clients, initing"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->init(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;Z)V

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 536
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Init failed in connect(). Shutting down?"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 538
    monitor-exit v1

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 546
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitializable(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 547
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Not docked, stopping connect."

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    monitor-exit v1

    goto :goto_0

    .line 551
    :cond_3
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startReaper()V

    .line 553
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->clientListContains(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Adding client %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->createWeakRef(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)Lcom/oculus/util/WeakRef;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static createWeakRef(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)Lcom/oculus/util/WeakRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;",
            ")",
            "Lcom/oculus/util/WeakRef",
            "<",
            "Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lcom/oculus/util/WeakRef;

    invoke-direct {v0, p0}, Lcom/oculus/util/WeakRef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getAppSignatures(Landroid/content/Context;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 413
    sget-boolean v1, Lcom/oculus/common/build/BuildConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mUnlockulusHelper:Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    .line 415
    invoke-virtual {v1, p1}, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->isEmployeeWithWhitelistedDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    :cond_1
    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FBANDROID_SIGNATURE_HASH_DEBUG:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 418
    :cond_2
    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_APPS_SIGNATURE_HASH_RELEASE:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 419
    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_PROD_SIGNATURE_HASH_RELEASE:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 421
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private init(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;Z)V
    .locals 5

    .prologue
    .line 578
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Calling init()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitializedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 581
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Already initialized"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    monitor-exit v1

    .line 645
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-direct {p0, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitializable(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Not docked, aborting init"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    monitor-exit v1

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 594
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "User not logged int, aborting init"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    monitor-exit v1

    goto :goto_0

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :try_start_2
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeInit(Landroid/content/Context;)V

    .line 601
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 603
    :try_start_3
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Native init completed."

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    new-instance v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$3;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.HEADSET_PLUG"

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$3;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 629
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    iget-object v3, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v3}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 631
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    iget-object v3, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 632
    invoke-virtual {v3}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 636
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isWiredHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->onHeadphonesStateChange(Z)V

    .line 639
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRLifecycleManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->connect(Ljava/lang/Object;)V

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitialized:Z

    .line 642
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 644
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "init() complete"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private final isBinderCallerAllowed()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/secure/trustedapp/TrustedApp;->isCallerAppIdentityTrusted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static isDeveloperMode(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vrmode_developer_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isInitializable(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVrStateManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v2}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isDeveloperMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    monitor-exit v1

    .line 517
    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    invoke-virtual {v2}, Lcom/oculus/horizon/vr/VRStateManager;->isDocked()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 517
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isWiredHeadsetOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 699
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 700
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private static loadPlatformLibraries()V
    .locals 1

    .prologue
    .line 430
    const-string v0, "ovrplatform"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 431
    const-string v0, "ovrplatformplugin"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public static makeSystemVoipPermissionError(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 937
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemVoip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission denied, requested by app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_id"

    .line 942
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemVoip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    .line 937
    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private maybeShowMicrophoneMutedToast()V
    .locals 4

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/platformplugin/MC$android_oculus_horizon;->is_microphone_setting_available:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1116
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    .line 1117
    const-string v1, "mic_muted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1118
    if-eqz v0, :cond_0

    .line 1119
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Microphone is muted. Toasting."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNotificationBuilder:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/oculus/horizon/R$string;->notifications_party_microphone_muted:I

    .line 1121
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    sget v3, Lcom/oculus/horizon/R$drawable;->ic_notif_microphone:I

    .line 1120
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->showVrOnlyNotificationWithIcon(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static native nativeCapturedAudioRenderer_Delete(J)V
.end method

.method private static native nativeCapturedAudioRenderer_New()J
.end method

.method private static native nativeCapturedAudioRenderer_RetrievePCM(J[SIII)I
.end method

.method private static native nativeCapturedAudioRenderer_StorePCM(J[SIIIIJ)V
.end method

.method public static native nativeGetCloudStorage2DownloadConflictFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static native nativeGetCloudStorage2MatchingFiles([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static native nativeGetCloudStorage2MetadataJsonFromFiles(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetCloudStorage2SyncFileActions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetCloudStorage2UploadConflictFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private static native nativeGetIsLivestreamingMicrophoneMuted()Z
.end method

.method private static native nativeGetSharedMicSocketFD(J)I
.end method

.method private static native nativeGetSharedMicrophoneData(JILandroid/os/Bundle;)V
.end method

.method private static native nativeGetSystemVoipData(ZLandroid/os/Bundle;)V
.end method

.method private static native nativeGetSystemVoipMicrophoneMuted()Ljava/lang/String;
.end method

.method private static native nativeGetSystemVoipPassthrough()Z
.end method

.method private static native nativeGetSystemVoipStatus()Ljava/lang/String;
.end method

.method private static native nativeGetSystemVoipVolume()F
.end method

.method private static native nativeGetVideoStreamingParticipants(Landroid/os/Bundle;)V
.end method

.method private static native nativeGetVideoStreamingTrackForParticipant(JLandroid/os/Bundle;)V
.end method

.method private static native nativeInit(Landroid/content/Context;)V
.end method

.method private static native nativeInitializeForCasting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInitializeForCastingNativeReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
.end method

.method private static native nativeInitializeForCastingWithVideoSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method private static native nativeInitializeMWSConnection(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativePartyChatStart(J)V
.end method

.method private static native nativePartyChatStop()V
.end method

.method private static native nativeSetCapturedPCM([SIIIJ)V
.end method

.method private static native nativeSetHeadphoneState(Z)V
.end method

.method private static native nativeSetHeadsetMountState(Z)V
.end method

.method private static native nativeSetLivestreamingMicrophoneMuted(Z)V
.end method

.method private static native nativeSetPartyGameAudioMuted(Z)V
.end method

.method private static native nativeSetSystemVoipDisabled(Z)V
.end method

.method private static native nativeSetSystemVoipMicrophoneMuted(ILandroid/os/Bundle;)V
.end method

.method private static native nativeSetSystemVoipPassthrough(Z)I
.end method

.method private static native nativeSetSystemVoipSuppressed(ZLandroid/os/Bundle;)V
.end method

.method private static native nativeSetSystemVoipVolume(F)V
.end method

.method private static native nativeSetTuneInModeEnabled(Z)V
.end method

.method private static native nativeSharedMicrophoneStop(J)V
.end method

.method private static native nativeStartLiveStreaming(Ljava/lang/String;)V
.end method

.method private static native nativeStartPartyVideoStreaming(Ljava/lang/String;)V
.end method

.method private static native nativeStopLiveStreaming()V
.end method

.method private static native nativeStopPartyVideoStreaming()V
.end method

.method private static native nativeTearDown()V
.end method

.method private onHeadphonesStateChange(Z)V
    .locals 3

    .prologue
    .line 1339
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "onHeadphonesStateChange: %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1340
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1341
    :try_start_0
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetHeadphoneState(Z)V

    .line 1342
    monitor-exit v1

    .line 1343
    return-void

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startReaper()V
    .locals 7

    .prologue
    .line 459
    iget-object v6, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaperLock:Ljava/lang/Object;

    monitor-enter v6

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaper:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 461
    monitor-exit v6

    .line 476
    :goto_0
    return-void

    .line 464
    :cond_0
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Starting up connection reaper"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaper:Ljava/util/Timer;

    .line 466
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaper:Ljava/util/Timer;

    new-instance v1, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$2;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 475
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopReaper()V
    .locals 3

    .prologue
    .line 479
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaperLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Stopping reaper"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaper:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaper:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mReaper:Ljava/util/Timer;

    .line 485
    :cond_0
    monitor-exit v1

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSystemVoipDisabled(ZZ)V
    .locals 4

    .prologue
    .line 897
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartiesStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mSystemVoipDisabled:Z

    if-ne v0, p1, :cond_1

    .line 899
    monitor-exit v1

    .line 934
    :cond_0
    return-void

    .line 902
    :cond_1
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateSystemVoipDisabled %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 903
    iput-boolean p1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mSystemVoipDisabled:Z

    .line 904
    iget-boolean v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatStarted:Z

    .line 905
    iget-boolean v3, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mSystemVoipDisabled:Z

    .line 906
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    :try_start_1
    iget-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mSystemVoipDisabled:Z

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipDisabled(Z)V

    .line 910
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 913
    if-nez p2, :cond_0

    .line 917
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 918
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/WeakRef;

    .line 919
    invoke-virtual {v0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;

    .line 920
    if-eqz v0, :cond_2

    .line 921
    invoke-interface {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;->showPartyChatResume()V

    goto :goto_0

    .line 906
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 910
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 926
    :cond_3
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 927
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/WeakRef;

    .line 928
    invoke-virtual {v0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;

    .line 929
    if-eqz v0, :cond_4

    .line 930
    invoke-interface {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;->showPartyChatSuspend()V

    goto :goto_1
.end method


# virtual methods
.method public beforeLogout()V
    .locals 2

    .prologue
    .line 705
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "beforeLogout() Trying to teardown down the Plugin."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 707
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->tearDown()V

    .line 708
    return-void
.end method

.method public captureAudioRendererRetrievePCM(J[SIII)I
    .locals 1

    .prologue
    .line 1371
    invoke-static/range {p1 .. p6}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeCapturedAudioRenderer_RetrievePCM(J[SIII)I

    move-result v0

    return v0
.end method

.method public capturedAudioRendererStorePCM(J[SIIIIJ)V
    .locals 0

    .prologue
    .line 1364
    invoke-static/range {p1 .. p9}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeCapturedAudioRenderer_StorePCM(J[SIIIIJ)V

    .line 1366
    return-void
.end method

.method public clientListContains(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/WeakRef;

    .line 253
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 254
    const/4 v2, 0x1

    .line 257
    :cond_0
    return v2

    .line 251
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;Z)V

    .line 447
    return-void
.end method

.method public connectForTuneIn(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;Z)V

    .line 451
    return-void
.end method

.method public createCapturedAudioRenderer()J
    .locals 2

    .prologue
    .line 1347
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeCapturedAudioRenderer_New()J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteCapturedAudioRenderer(J)V
    .locals 1

    .prologue
    .line 1352
    invoke-static {p1, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeCapturedAudioRenderer_Delete(J)V

    .line 1353
    return-void
.end method

.method public disconnect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V
    .locals 4

    .prologue
    .line 561
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mConnectionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->clientListContains(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Disconnecting, removing client %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->createWeakRef(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)Lcom/oculus/util/WeakRef;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 565
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "%d remain"

    iget-object v3, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Empty clients, tearing down"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->tearDown()V

    .line 574
    :cond_0
    monitor-exit v1

    .line 575
    return-void

    .line 567
    :cond_1
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to remove client not in list %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enforcePartyChatStateConsistency()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mSocialMethods:Lcom/oculus/horizon/social/SocialMethods;

    new-instance v1, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialMethods;->userGetCurrentParty(Lretrofit/Callback;)V

    .line 890
    return-void
.end method

.method public getIsLivestreamingMicrophoneEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    :goto_0
    return v0

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 977
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetIsLivestreamingMicrophoneMuted()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPartyChatVolume()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1202
    if-eqz v0, :cond_0

    .line 1213
    :goto_0
    return-object v0

    .line 1207
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1208
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSystemVoipVolume()F

    move-result v2

    .line 1209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1212
    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPartyChatVolumeX()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;
        }
    .end annotation

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    new-instance v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;

    const-string v1, "PlatformPlugin is not loaded"

    invoke-direct {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1195
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSystemVoipVolume()F

    move-result v0

    .line 1196
    monitor-exit v1

    .line 1197
    return v0

    .line 1196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSharedMicrophoneData(JI)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1220
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitErrorQuiet()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1221
    if-eqz v0, :cond_0

    .line 1231
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    .line 1225
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1226
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1227
    :try_start_2
    invoke-static {p1, p2, p3, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSharedMicrophoneData(JILandroid/os/Bundle;)V

    .line 1228
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1231
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1231
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getSharedMicrophoneSocketFD(J)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1239
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1240
    if-eqz v1, :cond_0

    .line 1254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    .line 1244
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1245
    :try_start_2
    invoke-static {p1, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSharedMicSocketFD(J)I

    move-result v4

    .line 1247
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1248
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1251
    :cond_1
    :try_start_3
    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1252
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1254
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getSystemVoipData(Z)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitErrorQuiet()Landroid/os/Bundle;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_0

    .line 1057
    :goto_0
    return-object v0

    .line 1053
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1054
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1055
    :try_start_0
    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSystemVoipData(ZLandroid/os/Bundle;)V

    .line 1056
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemVoipMicrophoneMutedX()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;
        }
    .end annotation

    .prologue
    .line 1077
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitErrorX()V

    .line 1079
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1080
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSystemVoipMicrophoneMuted()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemVoipPassthroughX()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;
        }
    .end annotation

    .prologue
    .line 1061
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitErrorX()V

    .line 1063
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1064
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSystemVoipPassthrough()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemVoipStateX()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    new-instance v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;

    const-string v1, "PlatformPlugin is not loaded"

    invoke-direct {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1014
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSystemVoipData(ZLandroid/os/Bundle;)V

    .line 1016
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    const-string/jumbo v1, "system_voip_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1016
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSystemVoipStatusX()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;
        }
    .end annotation

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitErrorX()V

    .line 1071
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1072
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSystemVoipStatus()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1073
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVideoStreamingParticipants()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_0

    .line 1286
    :goto_0
    return-object v0

    .line 1281
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1282
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1283
    :try_start_0
    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetVideoStreamingParticipants(Landroid/os/Bundle;)V

    .line 1284
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVideoStreamingTrackForParticipant(J)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1291
    if-eqz v0, :cond_0

    .line 1300
    :goto_0
    return-object v0

    .line 1295
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1296
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1297
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetVideoStreamingTrackForParticipant(JLandroid/os/Bundle;)V

    .line 1298
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initializeForCastingNativeReceiver(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7

    .prologue
    .line 1413
    const-string v1, ""

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeInitializeForCastingNativeReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 1414
    return-void
.end method

.method public initializeForCastingWithVideoSpec(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 1407
    const-string v1, ""

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeInitializeForCastingWithVideoSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1409
    return-void
.end method

.method public initializeMWSConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1381
    invoke-static {p1, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeInitializeMWSConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    return-void
.end method

.method public isCallingApplicationAllowedToModifySystemVoip(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->WHITELIST_SYSTEM_VOIP_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isBinderCallerAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallingApplicationAllowedToModifySystemVoipPassthrough(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->WHITELIST_PASSTHROUGH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isBinderCallerAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitializedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitialized:Z

    monitor-exit v1

    return v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAppStart(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 776
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "onAppStart %s %s"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "onAppStart called before init"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :goto_0
    return-void

    .line 790
    :cond_0
    const-string v0, "com.oculus.vralertservice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.systemui"

    .line 791
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    :cond_1
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Entered vralertservice or lock screen, doing quiet update"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->updateSystemVoipDisabled(ZZ)V

    .line 802
    :goto_1
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->WHITELIST_PASSTHROUGH:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 803
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "onAppStart - Stopping party chat passthrough"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipPassthrough(Z)I

    .line 806
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 811
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetSystemVoipData(ZLandroid/os/Bundle;)V

    .line 812
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 813
    const-string/jumbo v1, "system_voip_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 814
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "onAppStart nativeGetSystemVoipData didn\'t contain state"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_3
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Entered normal app, doing normal update"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-direct {p0, p3, v3}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->updateSystemVoipDisabled(ZZ)V

    .line 797
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->enforcePartyChatStateConsistency()V

    goto :goto_1

    .line 806
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 812
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 818
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oculus.system_voip_state"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const-string/jumbo v2, "system_voip_state"

    const-string/jumbo v3, "system_voip_state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAppStop(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 825
    if-nez p1, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "onAppStop %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 831
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 832
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "onAppStop called before init"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_2
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->WHITELIST_PASSTHROUGH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_0
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "onAppStop - Stopping party chat passthrough"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipPassthrough(Z)I

    .line 841
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onHeadsetMounted()V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public onHeadsetUnmounted()V
    .locals 0

    .prologue
    .line 740
    return-void
.end method

.method public onVRSessionEnded()V
    .locals 3

    .prologue
    .line 720
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Setting headsetIsDocked: false"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVrStateManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/vr/VRStateManager;->setIsDocked(Z)V

    .line 723
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->tearDown()V

    .line 730
    :cond_0
    return-void

    .line 723
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onVRSessionStarted()V
    .locals 3

    .prologue
    .line 712
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Setting headsetIsDocked: true"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVrStateManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/vr/VRStateManager;->setIsDocked(Z)V

    .line 715
    monitor-exit v1

    .line 716
    return-void

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDeadRefs()V
    .locals 5

    .prologue
    .line 491
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mConnectionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 493
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/WeakRef;

    .line 495
    invoke-virtual {v0}, Lcom/oculus/util/WeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 496
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 497
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v3, "Removing dead ref %d remain"

    iget-object v4, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 501
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Empty clients, tearing down"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->tearDown()V

    .line 505
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    return-void
.end method

.method public setCapturedPCM([SIIIJ)V
    .locals 1

    .prologue
    .line 1377
    invoke-static/range {p1 .. p6}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetCapturedPCM([SIIIJ)V

    .line 1378
    return-void
.end method

.method public setHeadsetMountStateAndConnect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1304
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHeadsetMountState: %b"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1320
    if-ne p2, v3, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHeadsetMountState forcing isDocked=true"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVrStateManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1323
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/vr/VRStateManager;->setIsDocked(Z)V

    .line 1324
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 1329
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1336
    :goto_0
    return-void

    .line 1324
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1333
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1334
    :try_start_2
    invoke-static {p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetHeadsetMountState(Z)V

    .line 1335
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setLivestreamingMicrophoneMuted(Z)V
    .locals 2

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    :goto_0
    return-void

    .line 986
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_0
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetLivestreamingMicrophoneMuted(Z)V

    .line 989
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPartyChatVolume(F)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1177
    if-eqz v0, :cond_0

    .line 1185
    :goto_0
    return-object v0

    .line 1181
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1182
    :try_start_0
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipVolume(F)V

    .line 1183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPartyChatVolumeX(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    new-instance v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;

    const-string v1, "PlatformPlugin is not loaded"

    invoke-direct {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1170
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1171
    :try_start_0
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipVolume(F)V

    .line 1172
    monitor-exit v1

    .line 1173
    return-void

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPartyGameAudioMuted(Z)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_0

    .line 1105
    :goto_0
    return-object v0

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1103
    :try_start_0
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetPartyGameAudioMuted(Z)V

    .line 1104
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSystemVoipMicrophoneMuted(I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1023
    if-eqz v0, :cond_0

    .line 1030
    :goto_0
    return-object v0

    .line 1026
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1027
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1028
    :try_start_0
    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipMicrophoneMuted(ILandroid/os/Bundle;)V

    .line 1029
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemVoipMicrophoneMutedX(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;

    const-string v1, "PlatformPlugin is not loaded"

    invoke-direct {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$InitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_0
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$MicrophoneMuteState;->validate(I)I

    .line 1000
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1001
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1002
    :try_start_0
    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipMicrophoneMuted(ILandroid/os/Bundle;)V

    .line 1003
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    const-string/jumbo v1, "system_voip_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1003
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSystemVoipPassthrough(Z)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 948
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v1

    .line 949
    if-eqz v1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-object v0

    .line 954
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 955
    :try_start_0
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipPassthrough(Z)I

    move-result v2

    .line 956
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 963
    if-nez p1, :cond_2

    .line 964
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Socket FD != -1, but passthrough == false"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_2
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    .line 956
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSystemVoipSuppressed(Z)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1035
    if-eqz v0, :cond_0

    .line 1043
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1040
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1041
    :try_start_0
    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetSystemVoipSuppressed(ZLandroid/os/Bundle;)V

    .line 1042
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTuneInModeEnabled(Z)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_0

    .line 1093
    :goto_0
    return-object v0

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1091
    :try_start_0
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSetTuneInModeEnabled(Z)V

    .line 1092
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1092
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sharedMicrophoneStop(J)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1261
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1262
    if-eqz v0, :cond_0

    .line 1271
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    .line 1266
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1267
    :try_start_2
    invoke-static {p1, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeSharedMicrophoneStop(J)V

    .line 1268
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1269
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1271
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1268
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1271
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startLiveStreaming(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1385
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeStartLiveStreaming(Ljava/lang/String;)V

    .line 1386
    return-void
.end method

.method public startPartyChat(J)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1128
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPartyChat"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_0

    .line 1146
    :goto_0
    return-object v0

    .line 1134
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1135
    const/4 v0, 0x0

    const-string v1, "Party id not set"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 1138
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->maybeShowMicrophoneMutedToast()V

    .line 1140
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1141
    :try_start_0
    invoke-static {p1, p2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativePartyChatStart(J)V

    .line 1142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartiesStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1144
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatStarted:Z

    .line 1145
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1142
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1145
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public startPartyVideoStreaming(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1393
    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeStartPartyVideoStreaming(Ljava/lang/String;)V

    .line 1394
    return-void
.end method

.method public stopLiveStreaming()V
    .locals 0

    .prologue
    .line 1389
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeStopLiveStreaming()V

    .line 1390
    return-void
.end method

.method public stopPartyChat()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1150
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPartyChat"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->checkInitError()Landroid/os/Bundle;

    move-result-object v0

    .line 1152
    if-eqz v0, :cond_0

    .line 1162
    :goto_0
    return-object v0

    .line 1156
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mNativeCodeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1157
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativePartyChatStop()V

    .line 1158
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartiesStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1160
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatStarted:Z

    .line 1161
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1158
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1161
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public stopPartyVideoStreaming()V
    .locals 0

    .prologue
    .line 1397
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeStopPartyVideoStreaming()V

    .line 1398
    return-void
.end method

.method tearDown()V
    .locals 8

    .prologue
    .line 648
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Calling tearDown()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVrStateManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/vr/VRStateManager;->getLastUndockTime()J

    move-result-wide v2

    .line 652
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitializedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_1
    iget-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 655
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 696
    :goto_0
    return-void

    .line 652
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 657
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mInitialized:Z

    .line 659
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v4, "Client list not empty on teardown. This will cause init to fail. Forcing clear."

    invoke-static {v0, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 665
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$4;

    invoke-direct {v4, p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$4;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 676
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 678
    invoke-virtual {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->unregisterBroadcastReceiver()V

    .line 680
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v4, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mPartyChatReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v0, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 683
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mVRLifecycleManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->disconnect(Ljava/lang/Object;)V

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 686
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    .line 687
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Previous undock time not set! Not logging anything"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 694
    invoke-direct {p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopReaper()V

    .line 695
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "tearDown() complete"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_2
    :try_start_4
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v2, "Time between undock and unload %d"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0, v4, v5}, Lcom/oculus/horizon/logging/OculusLogger;->reportPlatformPluginUnload(J)V

    goto :goto_1

    .line 692
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->TAG:Ljava/lang/String;

    const-string v1, "Unregiestering receiver"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->mBroadcastReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 750
    :cond_0
    return-void
.end method
