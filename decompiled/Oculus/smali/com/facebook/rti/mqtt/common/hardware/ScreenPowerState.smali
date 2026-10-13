.class public Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;
.super Ljava/lang/Object;
.source "ScreenPowerState.java"


# static fields
.field private static final FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsScreenOn:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastStateUpdatedTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mMqttHandler:Landroid/os/Handler;

.field private mScreenStateListener:Lcom/facebook/rti/mqtt/common/hardware/ScreenStateListener;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->FILTER:Landroid/content/IntentFilter;

    .line 38
    sget-object v0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->FILTER:Landroid/content/IntentFilter;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Landroid/os/Handler;Lcom/facebook/rti/common/time/MonotonicClock;)V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mLastStateUpdatedTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    .line 50
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mMqttHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;

    invoke-direct {v0, p0, p4}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;-><init>(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/MonotonicClock;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mLastStateUpdatedTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;)Lcom/facebook/rti/mqtt/common/hardware/ScreenStateListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mScreenStateListener:Lcom/facebook/rti/mqtt/common/hardware/ScreenStateListener;

    return-object v0
.end method


# virtual methods
.method public getLastStateUpdatedTimeStamp()J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mLastStateUpdatedTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isScreenOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    const-string v2, "power"

    const-class v3, Landroid/os/PowerManager;

    .line 107
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mMqttHandler:Landroid/os/Handler;

    .line 87
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenStateListener unregistration should be called on MqttThread. Current Looper:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/facebook/rti/common/util/Assertion;->assertInDebugMode(ZLjava/lang/String;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method
