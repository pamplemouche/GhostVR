.class public Lorg/webrtc/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static instance:Lorg/webrtc/NetworkMonitor;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

.field private currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

.field private final nativeNetworkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final networkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 56
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/NetworkMonitor;->assertIsTrue(Z)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->applicationContext:Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 62
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/NetworkMonitor;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfNetworkDisconnect(I)V

    return-void
.end method

.method public static addNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->addNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 212
    return-void
.end method

.method private addNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method private static assertIsTrue(Z)V
    .locals 2

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method private destroyAutoDetector()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->destroy()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 131
    :cond_0
    return-void
.end method

.method public static getAutoDetectorForTest()Lorg/webrtc/NetworkMonitorAutoDetect;
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    iget-object v0, v0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    return-object v0
.end method

.method private getCurrentConnectionType()Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method private getCurrentDefaultNetId()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getDefaultNetId()I

    move-result v0

    goto :goto_0
.end method

.method public static getInstance()Lorg/webrtc/NetworkMonitor;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lorg/webrtc/NetworkMonitor;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lorg/webrtc/NetworkMonitor;

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    .line 72
    :cond_0
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnline()Z
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0}, Lorg/webrtc/NetworkMonitor;->getCurrentConnectionType()Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 234
    sget-object v1, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeNotifyConnectionTypeChanged(J)V
.end method

.method private native nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkConnect(JLorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JI)V
.end method

.method private notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 175
    invoke-direct {p0, v2, v3}, Lorg/webrtc/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .line 178
    invoke-interface {v0, p1}, Lorg/webrtc/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_1

    .line 180
    :cond_1
    return-void
.end method

.method private notifyObserversOfNetworkConnect(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 184
    invoke-direct {p0, v2, v3, p1}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkConnect(JLorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkDisconnect(I)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 190
    invoke-direct {p0, v2, v3, p1}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfNetworkDisconnect(JI)V

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public static removeNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->removeNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 223
    return-void
.end method

.method private removeNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method static resetInstanceForTests(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lorg/webrtc/NetworkMonitor;

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    .line 247
    return-void
.end method

.method public static setAutoDetectConnectivityState(Z)V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 96
    return-void
.end method

.method private setAutoDetectConnectivityStateInternal(Z)V
    .locals 3

    .prologue
    .line 134
    if-nez p1, :cond_1

    .line 135
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->destroyAutoDetector()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect;

    new-instance v1, Lorg/webrtc/NetworkMonitor$1;

    invoke-direct {v1, p0}, Lorg/webrtc/NetworkMonitor$1;-><init>(Lorg/webrtc/NetworkMonitor;)V

    iget-object v2, p0, Lorg/webrtc/NetworkMonitor;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lorg/webrtc/NetworkMonitorAutoDetect;-><init>(Lorg/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 158
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 159
    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 161
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->updateActiveNetworkList()V

    goto :goto_0
.end method

.method private startMonitoring(J)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start monitoring from native observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 109
    return-void
.end method

.method private stopMonitoring(J)V
    .locals 3

    .prologue
    .line 113
    const-string v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop monitoring from native observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 115
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method private updateActiveNetworkList()V
    .locals 6

    .prologue
    .line 195
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    return-void

    .line 200
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 202
    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 203
    invoke-direct {p0, v4, v5, v0}, Lorg/webrtc/NetworkMonitor;->nativeNotifyOfActiveNetworkList(J[Lorg/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0
.end method

.method private updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 167
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 168
    return-void
.end method
