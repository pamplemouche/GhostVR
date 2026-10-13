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

.field private static final TAG:Ljava/lang/String; = "GearVRLogger"

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
            "Ljava/util/Queue<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mFunnelDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;",
            ">;"
        }
    .end annotation
.end field

.field private final mFunnelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
            "Ljava/util/Queue<",
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
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
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

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    .line 76
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEventLock:Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Lcom/oculus/aidl/IUnifiedTelemetryService;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mExposureEvents:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/aidl/IUnifiedTelemetryService;)Lcom/oculus/aidl/IUnifiedTelemetryService;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEventLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Map;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelRegistry:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelDataQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->flushData()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/PersistableBundle;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/PersistableBundle;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyExposureEvents:Ljava/util/Queue;

    return-object p0
.end method

.method private bindToServiceInOCMS()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.oculus.ocms"

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.ocms"

    const-string v3, "com.oculus.ocms.unifiedtelemetryservice.UnifiedTelemetryService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    const-string v2, "binding with com.oculus.ocms.unifiedtelemetryservice.UnifiedTelemetryService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;

    invoke-direct {v2, p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V

    const/4 v3, 0x1

    .line 101
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 130
    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$2;

    invoke-direct {v1, p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$2;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    const-string v2, "UnifiedTelemetry package com.oculus.ocms does not exist"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private flushData()V
    .locals 1

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

    return-void
.end method

.method private post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V

    return-void
.end method

.method private postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelDataQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    sget-object p1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_FUNNEL_DATA:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    return-void
.end method

.method private postLogExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;ZLjava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            "Z",
            "Ljava/util/Queue<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 206
    sget-object p1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    :goto_0
    invoke-direct {p0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    return-void
.end method

.method private postReportEvents(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 176
    sget-object p1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    :goto_0
    invoke-direct {p0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    return-void
.end method

.method private postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

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

    :cond_0
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    .line 151
    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    .line 152
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    return-void
.end method

.method endFunnel(Ljava/lang/String;)V
    .locals 2

    .line 249
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    return-void
.end method

.method endFunnel(Ljava/lang/String;J)V
    .locals 2

    .line 253
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    return-void
.end method

.method logExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyExposureEvents:Ljava/util/Queue;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mExposureEvents:Ljava/util/Queue;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postLogExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;ZLjava/util/Queue;)V

    return-void
.end method

.method registerFunnel(Ljava/lang/String;I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelRegistry:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object p1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REGISTER_FUNNEL:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    return-void
.end method

.method reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V
    .locals 3

    const-string v0, "utl_logging_package"

    .line 181
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Landroid/os/PersistableBundle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Landroid/os/PersistableBundle;

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 185
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postReportEvents(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 185
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method reportEvents(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Landroid/os/PersistableBundle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Landroid/os/PersistableBundle;

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    const-string v3, "utl_logging_package"

    .line 194
    iget-object v4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 195
    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_1

    .line 197
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-direct {p0, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postReportEvents(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 197
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8

    .line 245
    new-instance v7, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v7}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    return-void
.end method

.method reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 236
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    return-void
.end method

.method shouldDuplicateLogging()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method shouldUseUnifiedTelemetryService()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method startFunnel(Ljava/lang/String;)V
    .locals 2

    .line 227
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    return-void
.end method

.method startFunnel(Ljava/lang/String;J)V
    .locals 2

    .line 231
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    return-void
.end method
