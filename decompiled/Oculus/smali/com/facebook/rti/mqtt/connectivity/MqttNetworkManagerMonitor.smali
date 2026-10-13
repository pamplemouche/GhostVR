.class public Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;
.super Ljava/lang/Object;
.source "MqttNetworkManagerMonitor.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/connectivity/MqttConnectivityMonitor;


# instance fields
.field private final mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 19
    return-void
.end method

.method private addReason(Ljava/util/Map;Landroid/net/NetworkInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_0
    if-nez p2, :cond_1

    .line 42
    const-string v0, "MqttNetworkManagerMonitor"

    const-string v1, "no_info"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "MqttNetworkManagerMonitor"

    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 47
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    aput-object v4, v2, v3

    .line 46
    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isNetworkInterfaceConnected(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->isConnected()Z

    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getActiveNetworkInfoSafe()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->addReason(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 33
    :cond_0
    return v0
.end method


# virtual methods
.method public shouldBeConnected(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->isNetworkInterfaceConnected(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
