.class final enum Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;
.super Ljava/lang/Enum;
.source "BleRemoteTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/BleRemoteTrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

.field public static final enum AwaitingConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

.field public static final enum Connected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

.field public static final enum Disconnected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 103
    new-instance v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    const-string v1, "AwaitingConnection"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->AwaitingConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    .line 104
    new-instance v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    const-string v1, "Connected"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->Connected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    .line 105
    new-instance v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    const-string v1, "Disconnected"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->Disconnected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    const/4 v0, 0x3

    .line 101
    new-array v0, v0, [Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    sget-object v1, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->AwaitingConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->Connected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->Disconnected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->$VALUES:[Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;
    .locals 1

    .line 101
    const-class v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;
    .locals 1

    .line 101
    sget-object v0, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->$VALUES:[Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    invoke-virtual {v0}, [Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    return-object v0
.end method
