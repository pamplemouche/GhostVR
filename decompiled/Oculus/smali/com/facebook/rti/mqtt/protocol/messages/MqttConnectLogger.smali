.class public Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;
.super Ljava/lang/Object;
.source "MqttConnectLogger.java"


# instance fields
.field public final mEventType:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mEventType:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    .line 21
    return-void
.end method

.method public static writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/rti/common/thrift/TCompactProtocol;",
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-byte v0, p1, Lcom/facebook/rti/common/thrift/ThriftProperty;->type:B

    iget-short v1, p1, Lcom/facebook/rti/common/thrift/ThriftProperty;->id:S

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldBegin(BS)V

    .line 31
    return-void
.end method


# virtual methods
.method public addProperty(Lcom/facebook/rti/common/thrift/ThriftProperty;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/rti/common/thrift/ThriftProperty",
            "<TT;>;TT;)",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-object p0
.end method

.method public write(Lcom/facebook/rti/common/thrift/TCompactProtocol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xb

    .line 34
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger$1;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MqttConnect$EventType:[I

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mEventType:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 486
    :goto_0
    return-void

    .line 37
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructBegin()V

    .line 38
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 42
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userAgent:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userAgent:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userAgent:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 48
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_userAgent:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 56
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_endpointCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_endpointCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 61
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_endpointCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_endpointCapabilities:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 63
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_publishFormat:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_publishFormat:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 67
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 68
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_publishFormat:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_publishFormat:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI32(I)V

    .line 70
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_noAutomaticForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_noAutomaticForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 74
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 75
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_noAutomaticForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 76
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_noAutomaticForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBool(Z)V

    .line 77
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_makeUserAvailableInForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_makeUserAvailableInForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 81
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 82
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_makeUserAvailableInForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_makeUserAvailableInForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 84
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBool(Z)V

    .line 85
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 90
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_isInitiallyForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_isInitiallyForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 97
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_isInitiallyForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_isInitiallyForeground:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBool(Z)V

    .line 99
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 103
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 104
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI32(I)V

    .line 106
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 109
    :cond_9
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkSubtype:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkSubtype:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 111
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkSubtype:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_networkSubtype:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI32(I)V

    .line 113
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 116
    :cond_a
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientMqttSessionId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientMqttSessionId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 118
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientMqttSessionId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientMqttSessionId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 120
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 123
    :cond_b
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientIpAddress:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientIpAddress:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 124
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 125
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientIpAddress:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 126
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientIpAddress:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 130
    :cond_c
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_subscribeTopics:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_subscribeTopics:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 131
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 132
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_subscribeTopics:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_subscribeTopics:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    const/16 v1, 0x8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeListBegin(BI)V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI32(I)V

    goto :goto_1

    .line 138
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeListEnd()V

    .line 139
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 142
    :cond_e
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 143
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 144
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 149
    :cond_f
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_appId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_appId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 150
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 151
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_appId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_appId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 153
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 156
    :cond_10
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_overrideNectarLogging:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_overrideNectarLogging:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 157
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 158
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_overrideNectarLogging:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 159
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_overrideNectarLogging:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBool(Z)V

    .line 160
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 163
    :cond_11
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_connectTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_connectTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 164
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 165
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_connectTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_connectTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBinary([B)V

    .line 167
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 170
    :cond_12
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_regionPreference:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_regionPreference:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 171
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 172
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_regionPreference:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 173
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_regionPreference:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 177
    :cond_13
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 178
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 179
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 180
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_deviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 184
    :cond_14
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_loggerUserId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_loggerUserId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 185
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 186
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_loggerUserId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_loggerUserId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 188
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 191
    :cond_15
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientStack:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientStack:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 192
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 193
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientStack:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_clientStack:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeByte(B)V

    .line 195
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 198
    :cond_16
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionKey:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionKey:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 200
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionKey:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionKey:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 202
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 205
    :cond_17
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 206
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 207
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 208
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsConnectionSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 212
    :cond_18
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 213
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 214
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 215
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 219
    :cond_19
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 221
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ClientInfo_fbnsDeviceSecret:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 226
    :cond_1a
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldStop()V

    .line 227
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructEnd()V

    goto/16 :goto_0

    .line 233
    :pswitch_1
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructBegin()V

    .line 234
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncToken:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncToken:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 235
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 236
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncToken:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 237
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncToken:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 241
    :cond_1b
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_lastSeqId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_lastSeqId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 242
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 243
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_lastSeqId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 244
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_lastSeqId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 245
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 250
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_maxDeltasAbleToProcess:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_maxDeltasAbleToProcess:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 251
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 252
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_maxDeltasAbleToProcess:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 253
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_maxDeltasAbleToProcess:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI32(I)V

    .line 254
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 257
    :cond_1c
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deltaBatchSize:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deltaBatchSize:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 258
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 259
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deltaBatchSize:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 260
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deltaBatchSize:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI32(I)V

    .line 261
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 264
    :cond_1d
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_encoding:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_encoding:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 265
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 266
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_encoding:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 267
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_encoding:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 271
    :cond_1e
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 272
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 273
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 274
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueType:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 278
    :cond_1f
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncApiVersion:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncApiVersion:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 279
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 280
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncApiVersion:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 281
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncApiVersion:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI32(I)V

    .line 282
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 285
    :cond_20
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 286
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 287
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 288
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 292
    :cond_21
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 293
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 294
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 295
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_deviceParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 299
    :cond_22
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 300
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 301
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 302
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_queueParams:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 306
    :cond_23
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_entityFbid:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_entityFbid:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 307
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 308
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_entityFbid:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 309
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_entityFbid:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 310
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 313
    :cond_24
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncTokenLong:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncTokenLong:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 314
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 315
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncTokenLong:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 316
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->GetIrisDiffs_syncTokenLong:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI64(J)V

    .line 317
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 320
    :cond_25
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldStop()V

    .line 321
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructEnd()V

    goto/16 :goto_0

    .line 247
    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Required field \'GetIrisDiffs.lastSeqId\' was not present!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructBegin()V

    .line 328
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_ipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_ipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 329
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 330
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_ipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 331
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_ipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 335
    :cond_27
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_hostName:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_hostName:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 336
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 337
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_hostName:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 338
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_hostName:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 342
    :cond_28
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_vipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_vipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 343
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 344
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_vipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 345
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ProxygenInfo_vipAddr:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 349
    :cond_29
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldStop()V

    .line 350
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructEnd()V

    goto/16 :goto_0

    .line 356
    :pswitch_3
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructBegin()V

    .line 357
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_topic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_topic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 358
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 359
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_topic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 360
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_topic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 364
    :cond_2a
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_messageId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_messageId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 365
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 366
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_messageId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 367
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_messageId:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeI32(I)V

    .line 368
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 371
    :cond_2b
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_payload:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_payload:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 372
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 373
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_payload:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 374
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnPublishMessage_payload:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBinary([B)V

    .line 375
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 378
    :cond_2c
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldStop()V

    .line 379
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructEnd()V

    goto/16 :goto_0

    .line 385
    :pswitch_4
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructBegin()V

    .line 386
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientIdentifier:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientIdentifier:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 387
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 388
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientIdentifier:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 389
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientIdentifier:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 393
    :cond_2d
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willTopic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willTopic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 394
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 395
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willTopic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 396
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willTopic:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 400
    :cond_2e
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willMessage:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willMessage:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 401
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 402
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willMessage:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 403
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_willMessage:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 407
    :cond_2f
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 408
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 409
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 410
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_clientInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->write(Lcom/facebook/rti/common/thrift/TCompactProtocol;)V

    .line 411
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 414
    :cond_30
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_password:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_password:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 415
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 416
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_password:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 417
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_password:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 421
    :cond_31
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_getDiffsRequests:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_getDiffsRequests:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 422
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 423
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_getDiffsRequests:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 424
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_getDiffsRequests:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 425
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 426
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeListBegin(BI)V

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 428
    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeBinary([B)V

    goto :goto_2

    .line 430
    :cond_32
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeListEnd()V

    .line 431
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 434
    :cond_33
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_proxygenInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_proxygenInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 435
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 436
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_proxygenInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 437
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_proxygenInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 438
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 439
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeListBegin(BI)V

    .line 440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 441
    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->write(Lcom/facebook/rti/common/thrift/TCompactProtocol;)V

    goto :goto_3

    .line 443
    :cond_34
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeListEnd()V

    .line 444
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 447
    :cond_35
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_combinedPublishes:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_combinedPublishes:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 448
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 449
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_combinedPublishes:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 450
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_combinedPublishes:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 451
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeListBegin(BI)V

    .line 453
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;

    .line 454
    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->write(Lcom/facebook/rti/common/thrift/TCompactProtocol;)V

    goto :goto_4

    .line 456
    :cond_36
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeListEnd()V

    .line 457
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 460
    :cond_37
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_zeroRatingTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_zeroRatingTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 461
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 462
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_zeroRatingTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 463
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_zeroRatingTokenHash:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 467
    :cond_38
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_appSpecificInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_appSpecificInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 468
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 469
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_appSpecificInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    invoke-static {p1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->writeFieldBegin(Lcom/facebook/rti/common/thrift/TCompactProtocol;Lcom/facebook/rti/common/thrift/ThriftProperty;)V

    .line 470
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnectLogger;->mMap:Ljava/util/Map;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;->ConnectMessage_appSpecificInfo:Lcom/facebook/rti/common/thrift/ThriftProperty;

    .line 471
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 472
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v2, v2, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeMapBegin(BBI)V

    .line 473
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    .line 475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 477
    :cond_39
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeMapEnd()V

    .line 478
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldEnd()V

    .line 481
    :cond_3a
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeFieldStop()V

    .line 482
    invoke-virtual {p1}, Lcom/facebook/rti/common/thrift/TCompactProtocol;->writeStructEnd()V

    goto/16 :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
