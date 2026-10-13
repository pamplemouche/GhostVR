.class public final enum Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;
.super Ljava/lang/Enum;
.source "ServiceConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

.field public static final enum FBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

.field public static final enum MqttDirect:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

.field public static final enum MqttLite:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

.field public static final enum MqttSimpleClient:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

.field public static final enum MultiuserMqtt:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

.field public static final enum PreloadedFBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

.field public static final enum TestFBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

.field public static final enum TestMqttLite:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    const-string v1, "MqttLite"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->MqttLite:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 7
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    const-string v1, "FBNS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->FBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 8
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    const-string v1, "PreloadedFBNS"

    invoke-direct {v0, v1, v5}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->PreloadedFBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 9
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    const-string v1, "MqttDirect"

    invoke-direct {v0, v1, v6}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->MqttDirect:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 10
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    const-string v1, "MqttSimpleClient"

    invoke-direct {v0, v1, v7}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->MqttSimpleClient:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 11
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    const-string v1, "MultiuserMqtt"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->MultiuserMqtt:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 12
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    const-string v1, "TestMqttLite"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->TestMqttLite:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 13
    new-instance v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    const-string v1, "TestFBNS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->TestFBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    .line 5
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    sget-object v1, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->MqttLite:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->FBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->PreloadedFBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->MqttDirect:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->MqttSimpleClient:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->MultiuserMqtt:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->TestMqttLite:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->TestFBNS:Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->$VALUES:[Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->$VALUES:[Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;

    return-object v0
.end method
