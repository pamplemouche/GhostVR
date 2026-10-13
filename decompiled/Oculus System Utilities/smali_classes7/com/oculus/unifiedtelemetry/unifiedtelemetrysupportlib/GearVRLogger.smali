.class Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
.super Ljava/lang/Object;
.source "GearVRLogger.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;,
        Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;
    }
.end annotation


# static fields
.field private static final GATEKEEPER_REFRESH_INTERVAL:J = 0xea60L

.field private static final RETRY_BIND_INTERVAL:J = 0x7530L

.field private static final TAG:Ljava/lang/String;

.field private static final UNIFIED_TELEMETRY_PACKAGE_NAME_GEAR_VR:Ljava/lang/String; = "com.oculus.ocms"

.field private static final UNIFIED_TELEMETRY_SERVICE_NAME:Ljava/lang/String; = "com.oculus.ocms.unifiedtelemetryservice.UnifiedTelemetryService"


# instance fields
.field private volatile mBackgroundHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mEventLock:Ljava/lang/Object;

.field private final mEvents:Landroid/os/PersistableBundle;

.field private final mExposureEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mFunnelDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;",
            ">;"
        }
    .end annotation
.end field

.field private final mFunnelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLowLatencyEvents:Landroid/os/PersistableBundle;

.field private final mLowLatencyExposureEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private volatile mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

.field private final mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    .line 68
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Landroid/os/PersistableBundle;

    .line 69
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Landroid/os/PersistableBundle;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyExposureEvents:Ljava/util/Queue;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mExposureEvents:Ljava/util/Queue;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelDataQueue:Ljava/util/Queue;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelRegistry:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEventLock:Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    .line 81
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Lcom/oculus/aidl/IUnifiedTelemetryService;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mExposureEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/aidl/IUnifiedTelemetryService;)Lcom/oculus/aidl/IUnifiedTelemetryService;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
    .param p1, "x1"    # Lcom/oculus/aidl/IUnifiedTelemetryService;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
    .param p1, "x1"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;
    .param p2, "x2"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEventLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelRegistry:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelDataQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
    .param p1, "x1"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->flushData()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyExposureEvents:Ljava/util/Queue;

    return-object v0
.end method

.method private bindToServiceInOCMS()V
    .locals 8

    .prologue
    .line 85
    iget-object v4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 87
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.oculus.ocms"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.oculus.ocms"

    const-string v6, "com.oculus.ocms.unifiedtelemetryservice.UnifiedTelemetryService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    sget-object v4, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    const-string v5, "binding with com.oculus.ocms.unifiedtelemetryservice.UnifiedTelemetryService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;

    invoke-direct {v5, p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V

    const/4 v6, 0x1

    .line 101
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 130
    .local v0, "bindResult":Z
    sget-object v4, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindResult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez v0, :cond_0

    .line 133
    iget-object v4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$2;

    invoke-direct {v5, p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$2;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    .end local v0    # "bindResult":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    const-string v5, "UnifiedTelemetry package com.oculus.ocms does not exist"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private flushData()V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 168
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 169
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 170
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 171
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REGISTER_FUNNEL:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 172
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_FUNNEL_DATA:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 173
    return-void
.end method

.method private post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V
    .locals 2
    .param p1, "messageType"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .prologue
    .line 156
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V

    .line 157
    return-void
.end method

.method private postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V
    .locals 1
    .param p1, "funnelData"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelDataQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_FUNNEL_DATA:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 224
    return-void
.end method

.method private postLogExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;ZLjava/util/Queue;)V
    .locals 1
    .param p1, "analyticsEvent"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .param p2, "lowLatency"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            "Z",
            "Ljava/util/Queue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;>;"
    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    :goto_0
    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 207
    return-void

    .line 206
    :cond_1
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    goto :goto_0
.end method

.method private postReportEvents(Z)V
    .locals 1
    .param p1, "lowLatency"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    :goto_0
    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 177
    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    goto :goto_0
.end method

.method private postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V
    .locals 2
    .param p1, "messageType"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;
    .param p2, "delay"    # J

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    .line 161
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 150
    :cond_0
    iput-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    .line 151
    iput-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    .line 152
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    .line 153
    return-void
.end method

.method endFunnel(Ljava/lang/String;)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 250
    return-void
.end method

.method endFunnel(Ljava/lang/String;J)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J

    .prologue
    .line 253
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 254
    return-void
.end method

.method logExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V
    .locals 1
    .param p1, "analyticsEvent"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .param p2, "lowLatency"    # Z

    .prologue
    .line 210
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyExposureEvents:Ljava/util/Queue;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postLogExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;ZLjava/util/Queue;)V

    .line 212
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mExposureEvents:Ljava/util/Queue;

    goto :goto_0
.end method

.method registerFunnel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "secondsToEndSinceLastUpdate"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelRegistry:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REGISTER_FUNNEL:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 217
    return-void
.end method

.method reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V
    .locals 4
    .param p1, "analyticsEvent"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .param p2, "lowLatency"    # Z

    .prologue
    .line 181
    const-string v1, "utl_logging_package"

    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 182
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Landroid/os/PersistableBundle;

    .line 183
    .local v0, "bundle":Landroid/os/PersistableBundle;
    :goto_0
    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEventLock:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :try_start_0
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 185
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postReportEvents(Z)V

    .line 187
    return-void

    .line 182
    .end local v0    # "bundle":Landroid/os/PersistableBundle;
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Landroid/os/PersistableBundle;

    goto :goto_0

    .line 185
    .restart local v0    # "bundle":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method reportEvents(Ljava/util/List;Z)V
    .locals 6
    .param p2, "lowLatency"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "analyticsEvents":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;>;"
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Landroid/os/PersistableBundle;

    .line 191
    .local v1, "bundle":Landroid/os/PersistableBundle;
    :goto_0
    iget-object v3, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 192
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 194
    .local v0, "analyticsEvent":Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    const-string v4, "utl_logging_package"

    iget-object v5, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 195
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_1

    .line 197
    .end local v0    # "analyticsEvent":Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 190
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_0
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Landroid/os/PersistableBundle;

    goto :goto_0

    .line 197
    .restart local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    invoke-direct {p0, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postReportEvents(Z)V

    .line 199
    return-void
.end method

.method reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J
    .param p4, "actionName"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "actionData"    # Landroid/os/PersistableBundle;

    .prologue
    .line 245
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 246
    return-void
.end method

.method reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "actionData"    # Landroid/os/PersistableBundle;

    .prologue
    .line 236
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 237
    return-void
.end method

.method shouldDuplicateLogging()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method shouldUseUnifiedTelemetryService()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method startFunnel(Ljava/lang/String;)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 228
    return-void
.end method

.method startFunnel(Ljava/lang/String;J)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J

    .prologue
    .line 231
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 232
    return-void
.end method
