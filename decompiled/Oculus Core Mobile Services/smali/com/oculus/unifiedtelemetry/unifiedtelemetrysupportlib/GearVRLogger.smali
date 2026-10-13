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
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mBackgroundHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mExposureEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mFunnelDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;",
            ">;"
        }
    .end annotation
.end field

.field private final mFunnelRegistry:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLowLatencyEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowLatencyExposureEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
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
    .line 35
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyExposureEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mExposureEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    .line 84
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    .line 85
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Lcom/oculus/aidl/IUnifiedTelemetryService;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/aidl/IUnifiedTelemetryService;)Lcom/oculus/aidl/IUnifiedTelemetryService;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->flushData()V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyExposureEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mExposureEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private bindToServiceInOCMS()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    :try_start_0
    const-string v1, "com.oculus.ocms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.ocms"

    const-string v3, "com.oculus.ocms.unifiedtelemetryservice.UnifiedTelemetryService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    const-string v2, "binding with com.oculus.ocms.unifiedtelemetryservice.UnifiedTelemetryService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;

    invoke-direct {v2, p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V

    const/4 v3, 0x1

    .line 105
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 128
    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$2;

    invoke-direct {v1, p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$2;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    const-string v2, "UnifiedTelemetry package com.oculus.ocms does not exist"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private flushData()V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 160
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 161
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 162
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EXPOSURE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 163
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REGISTER_FUNNEL:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 164
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_FUNNEL_DATA:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 165
    return-void
.end method

.method private post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V
    .locals 2

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V

    .line 151
    return-void
.end method

.method private postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V
    .locals 1

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_FUNNEL_DATA:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 216
    return-void
.end method

.method private postReportEvents(Ljava/util/List;ZLjava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;Z",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    const-string v2, "utl_logging_package"

    iget-object v3, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 175
    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_LOW_LATENCY_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    :goto_1
    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 180
    return-void

    .line 179
    :cond_2
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REPORT_EVENTS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    goto :goto_1
.end method

.method private postWithDelay(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mBackgroundHandler:Landroid/os/Handler;

    .line 155
    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 156
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUnifiedTelemetryService:Lcom/oculus/aidl/IUnifiedTelemetryService;

    .line 146
    invoke-direct {p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V

    .line 147
    return-void
.end method

.method endFunnel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 242
    return-void
.end method

.method endFunnel(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->END:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 246
    return-void
.end method

.method registerFunnel(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mFunnelRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->REGISTER_FUNNEL:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->post(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 209
    return-void
.end method

.method reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V
    .locals 2

    .prologue
    .line 184
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mLowLatencyEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 183
    :goto_0
    invoke-direct {p0, v1, p2, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postReportEvents(Ljava/util/List;ZLjava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 187
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    goto :goto_0
.end method

.method reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8

    .prologue
    .line 237
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 238
    return-void
.end method

.method reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 229
    return-void
.end method

.method shouldDuplicateLogging()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mDuplicateLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method shouldUseUnifiedTelemetryService()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->mUseUnifiedTelemetryService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method startFunnel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 220
    return-void
.end method

.method startFunnel(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->START:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->postFunnelData(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;)V

    .line 224
    return-void
.end method
