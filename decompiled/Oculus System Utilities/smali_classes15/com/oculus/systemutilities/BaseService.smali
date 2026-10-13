.class public abstract Lcom/oculus/systemutilities/BaseService;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/oculus/modules/codegen/SupportsEarlyDestroyable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDebugIntentReceiver:Lcom/oculus/systemutilities/DebugIntentReceiver;

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

    .line 39
    const-class v0, Lcom/oculus/systemutilities/BaseService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/BaseService;->TAG:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/oculus/systemutilities/BaseService;->mDebugIntentReceiver:Lcom/oculus/systemutilities/DebugIntentReceiver;

    .line 42
    sput-object v1, Lcom/oculus/systemutilities/BaseService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/systemutilities/BaseService;->mEarlyDestroyableModules:Ljava/util/List;

    .line 47
    const-string v0, "systemutilities"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/oculus/crashreporter/JavascriptCrashReporter;->shutdown()V

    .line 78
    sget-object v1, Lcom/oculus/systemutilities/BaseService;->mDebugIntentReceiver:Lcom/oculus/systemutilities/DebugIntentReceiver;

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/oculus/systemutilities/BaseService;->mDebugIntentReceiver:Lcom/oculus/systemutilities/DebugIntentReceiver;

    invoke-virtual {v1}, Lcom/oculus/systemutilities/DebugIntentReceiver;->destroy()V

    .line 81
    :cond_0
    sget-object v1, Lcom/oculus/systemutilities/BaseService;->mEarlyDestroyableModules:Ljava/util/List;

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

    .line 82
    .restart local v0    # "module":Lcom/oculus/modules/codegen/EarlyDestroyable;
    invoke-interface {v0}, Lcom/oculus/modules/codegen/EarlyDestroyable;->shutdownModule()V

    goto :goto_0

    .line 84
    :cond_1
    sget-object v1, Lcom/oculus/systemutilities/BaseService;->mEarlyDestroyableModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 86
    invoke-static {}, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->flushAnalytics()V

    .line 87
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;Landroid/os/Handler;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceType"    # Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    sget-object v0, Lcom/oculus/systemutilities/BaseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate service type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p1}, Lcom/oculus/systemutilities/module/ServiceModule;->setServiceType(Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;)V

    .line 54
    invoke-static {p0, p2}, Lcom/oculus/systemutilities/CrashReporting;->initialize(Landroid/content/Context;Landroid/os/Handler;)V

    .line 55
    sget-object v0, Lcom/oculus/systemutilities/BaseService;->TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;-><init>(Landroid/content/Context;[Landroid/content/pm/Signature;)V

    sput-object v0, Lcom/oculus/systemutilities/BaseService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 62
    invoke-static {p0}, Lcom/oculus/systemutilities/BaseService;->registerLibraryChangeListener(Landroid/content/Context;)V

    .line 63
    sget-object v0, Lcom/oculus/systemutilities/BaseService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-static {v0}, Lcom/oculus/modules/LibraryModuleImpl;->fetchLibraryAsync(Lcom/oculus/libraryapi/OVRLibrary;)V

    .line 65
    invoke-static {}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->initialFetchPreferencesAsync()V

    .line 66
    invoke-static {p0}, Lcom/oculus/localmedia/LocalMediaManager;->init(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lcom/oculus/systemutilities/module/GateKeepers;->initialFetchAsync(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private static registerLibraryChangeListener(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v0, Lcom/oculus/systemutilities/BaseService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    new-instance v1, Lcom/oculus/systemutilities/BaseService$1;

    invoke-direct {v1}, Lcom/oculus/systemutilities/BaseService$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public registerModuleForEarlyDestroy(Lcom/oculus/modules/codegen/EarlyDestroyable;)V
    .locals 1
    .param p1, "module"    # Lcom/oculus/modules/codegen/EarlyDestroyable;

    .prologue
    .line 90
    sget-object v0, Lcom/oculus/systemutilities/BaseService;->mEarlyDestroyableModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
