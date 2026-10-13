.class public abstract Lcom/oculus/vrshell/home/BaseService;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDebugIntentReceiver:Lcom/oculus/vrshell/home/DebugIntentReceiver;

.field private static mEarlyDestroyableModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/EarlyDestroyable;",
            ">;"
        }
    .end annotation
.end field

.field private static mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-class v0, Lcom/oculus/vrshell/home/BaseService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/BaseService;->TAG:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/oculus/vrshell/home/BaseService;->mDebugIntentReceiver:Lcom/oculus/vrshell/home/DebugIntentReceiver;

    .line 53
    sput-object v1, Lcom/oculus/vrshell/home/BaseService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/BaseService;->mEarlyDestroyableModules:Ljava/util/List;

    .line 58
    const-string v0, "home"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/oculus/crashreporter/JavascriptCrashReporter;->shutdown()V

    .line 106
    sget-object v1, Lcom/oculus/vrshell/home/BaseService;->mDebugIntentReceiver:Lcom/oculus/vrshell/home/DebugIntentReceiver;

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcom/oculus/vrshell/home/BaseService;->mDebugIntentReceiver:Lcom/oculus/vrshell/home/DebugIntentReceiver;

    invoke-virtual {v1}, Lcom/oculus/vrshell/home/DebugIntentReceiver;->destroy()V

    .line 109
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/home/BaseService;->mEarlyDestroyableModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "module":Lcom/oculus/modules/codegen/EarlyDestroyable;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "module":Lcom/oculus/modules/codegen/EarlyDestroyable;
    check-cast v0, Lcom/oculus/modules/codegen/EarlyDestroyable;

    .line 110
    .restart local v0    # "module":Lcom/oculus/modules/codegen/EarlyDestroyable;
    invoke-interface {v0}, Lcom/oculus/modules/codegen/EarlyDestroyable;->shutdownModule()V

    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lcom/oculus/vrshell/home/BaseService;->mEarlyDestroyableModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 114
    invoke-static {}, Lcom/oculus/vrshell/home/HomeApplication;->flushAnalytics()V

    .line 115
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/oculus/modules/codegen/ServiceModule$ServiceType;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Lcom/oculus/modules/codegen/ServiceModule$ServiceType;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    sget-object v0, Lcom/oculus/vrshell/home/BaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate service type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/oculus/modules/ServiceModuleImpl;->setServiceType(Lcom/oculus/modules/codegen/ServiceModule$ServiceType;)V

    .line 67
    invoke-virtual {p1}, Lcom/oculus/modules/codegen/ServiceModule$ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/oculus/vrshell/home/CrashReporting;->initialize(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/oculus/vrshell/home/BaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Core app versions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/oculus/logging/legacy/OculusLogger;->getCoreAppVersionJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;-><init>(Landroid/content/Context;[Landroid/content/pm/Signature;)V

    sput-object v0, Lcom/oculus/vrshell/home/BaseService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 80
    sget-object v0, Lcom/oculus/modules/codegen/ServiceModule$ServiceType;->VRNUX:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    if-eq p1, v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/oculus/vrshell/home/BaseService;->registerLibraryChangeListener(Landroid/content/Context;)V

    .line 82
    invoke-static {p0}, Lcom/oculus/vrshell/home/BaseService;->registerPartyChangeListener(Landroid/content/Context;)V

    .line 83
    invoke-static {p0}, Lcom/oculus/vrshell/home/BaseService;->registerIncomingPartyCallsChangeListener(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/oculus/vrshell/home/BaseService;->registerFriendsChangeListener(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/oculus/vrshell/home/BaseService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-static {v0}, Lcom/oculus/modules/LibraryModuleImpl;->fetchLibraryAsync(Lcom/oculus/libraryapi/OVRLibrary;)V

    .line 86
    new-instance v0, Lcom/oculus/device/APIInterceptor;

    invoke-direct {v0, p0}, Lcom/oculus/device/APIInterceptor;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/oculus/modules/QuickPromotionModuleImpl;->setHttpClientInterceptor(Lokhttp3/Interceptor;)V

    .line 88
    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->initialFetchPreferencesAsync()V

    .line 89
    invoke-static {p0}, Lcom/oculus/localmedia/LocalMediaManager;->init(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lcom/oculus/vrshell/home/module/GateKeepers;->initialFetchAsync(Landroid/content/Context;)V

    .line 91
    invoke-static {p0}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->initialFetchAsync(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method protected static final native nativeOnTrimMemory(I)V
.end method

.method public static onTrimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 99
    invoke-static {p0}, Lcom/oculus/vrshell/home/BaseService;->nativeOnTrimMemory(I)V

    .line 100
    return-void
.end method

.method private static registerFriendsChangeListener(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oculus.horizon.social"

    .line 179
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/oculus/vrshell/home/BaseService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Lcom/oculus/vrshell/home/BaseService$4;-><init>(Landroid/os/Handler;)V

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    return-void
.end method

.method private static registerIncomingPartyCallsChangeListener(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->CONTENT_URI:Ljava/lang/String;

    .line 156
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/oculus/vrshell/home/BaseService$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Lcom/oculus/vrshell/home/BaseService$3;-><init>(Landroid/os/Handler;)V

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    return-void
.end method

.method private static registerLibraryChangeListener(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    sget-object v0, Lcom/oculus/vrshell/home/BaseService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    new-instance v1, Lcom/oculus/vrshell/home/BaseService$1;

    invoke-direct {v1}, Lcom/oculus/vrshell/home/BaseService$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 129
    return-void
.end method

.method private static registerPartyChangeListener(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oculus.horizon.parties"

    .line 134
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/oculus/vrshell/home/BaseService$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Lcom/oculus/vrshell/home/BaseService$2;-><init>(Landroid/os/Handler;)V

    .line 132
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    return-void
.end method


# virtual methods
.method public registerModuleForEarlyDestroy(Lcom/oculus/modules/codegen/EarlyDestroyable;)V
    .locals 1
    .param p1, "module"    # Lcom/oculus/modules/codegen/EarlyDestroyable;

    .prologue
    .line 118
    sget-object v0, Lcom/oculus/vrshell/home/BaseService;->mEarlyDestroyableModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method
