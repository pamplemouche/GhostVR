.class public Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;
.super Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;
.source "MobileConfigContextNoop.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation


# static fields
.field private static sInstance:Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;-><init>(Lcom/facebook/mobileconfig/MobileConfigOverridesTable;)V

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;
    .locals 3

    .prologue
    .line 20
    const-class v1, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->sInstance:Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->sInstance:Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :goto_0
    monitor-exit v1

    return-object v0

    .line 23
    :cond_0
    :try_start_1
    sget-object v2, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->sLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->sInstance:Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    invoke-direct {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;-><init>()V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->sInstance:Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    .line 27
    :cond_1
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;->sInstance:Lcom/facebook/mobileconfig/factory/MobileConfigContextNoop;

    monitor-exit v2

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBooleanFromStorage(JZZ)Z
    .locals 0

    .prologue
    .line 38
    return p3
.end method

.method public getDoubleFromStorage(JDZ)D
    .locals 1

    .prologue
    .line 50
    return-wide p3
.end method

.method public getLoggingId(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongFromStorage(JJZ)J
    .locals 1

    .prologue
    .line 44
    return-wide p3
.end method

.method public getStringFromStorage(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    return-object p3
.end method

.method public hasServerValueFromStorage(J)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public hasValueFromStorage(J)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public logExposure(JLcom/facebook/mobileconfig/factory/ExposureType;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
