.class public final enum Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;
.super Ljava/lang/Enum;
.source "MqttConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

.field public static final enum ClientInfo:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

.field public static final enum ConnPublishMessage:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

.field public static final enum ConnectMessage:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

.field public static final enum GetIrisDiffs:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

.field public static final enum ProxygenInfo:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    const-string v1, "ClientInfo"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ClientInfo:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    .line 14
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    const-string v1, "GetIrisDiffs"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->GetIrisDiffs:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    .line 15
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    const-string v1, "ProxygenInfo"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ProxygenInfo:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    .line 16
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    const-string v1, "ConnPublishMessage"

    invoke-direct {v0, v1, v5}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ConnPublishMessage:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    .line 17
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    const-string v1, "ConnectMessage"

    invoke-direct {v0, v1, v6}, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ConnectMessage:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ClientInfo:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->GetIrisDiffs:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ProxygenInfo:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ConnPublishMessage:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->ConnectMessage:Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->$VALUES:[Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->$VALUES:[Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/protocol/messages/MqttConnect$EventType;

    return-object v0
.end method
