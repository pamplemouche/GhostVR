.class public final enum Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;
.super Ljava/lang/Enum;
.source "DisconnectDetailReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum ABORTED_PREEMPTIVE_RECONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum AUTH_CREDENTIALS_CHANGE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum DISCONNECT_FROM_SERVER:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum KEEPALIVE_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum KICK_CONFIG_CHANGED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum KICK_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum NETWORK_LOST:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum OPERATION_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum PING_UNRECEIVED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum PREEMPTIVE_RECONNECT_SUCCESS:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum READ_EOF:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum READ_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum READ_FORMAT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum READ_IO:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum READ_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum READ_SSL:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum READ_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum SERIALIZER_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum SERVICE_DESTROY:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum SERVICE_STOP:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum UNKNOWN_RUNTIME:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum WRITE_EOF:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum WRITE_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum WRITE_IO:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum WRITE_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum WRITE_SSL:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

.field public static final enum WRITE_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "SERVICE_DESTROY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERVICE_DESTROY:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 16
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "SERVICE_STOP"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERVICE_STOP:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 17
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "KICK_SHOULD_NOT_CONNECT"

    invoke-direct {v0, v1, v5}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KICK_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 18
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "KICK_CONFIG_CHANGED"

    invoke-direct {v0, v1, v6}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KICK_CONFIG_CHANGED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 19
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "KEEPALIVE_SHOULD_NOT_CONNECT"

    invoke-direct {v0, v1, v7}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KEEPALIVE_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 20
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "EXPIRE_CONNECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 21
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "OPERATION_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->OPERATION_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 22
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "PING_UNRECEIVED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->PING_UNRECEIVED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 23
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "READ_TIMEOUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 24
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "READ_EOF"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_EOF:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 25
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "READ_SOCKET"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 26
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "READ_SSL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_SSL:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 27
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "READ_IO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_IO:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 28
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "READ_FORMAT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_FORMAT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 29
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "READ_FAILURE_UNCLASSIFIED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 30
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "WRITE_TIMEOUT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 31
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "WRITE_EOF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_EOF:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 32
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "WRITE_SOCKET"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 33
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "WRITE_SSL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_SSL:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 34
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "WRITE_IO"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_IO:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 35
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "WRITE_FAILURE_UNCLASSIFIED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 36
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "UNKNOWN_RUNTIME"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->UNKNOWN_RUNTIME:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 37
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "SEND_FAILURE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 38
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "DISCONNECT_FROM_SERVER"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->DISCONNECT_FROM_SERVER:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 39
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "SERIALIZER_FAILURE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERIALIZER_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 40
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "PREEMPTIVE_RECONNECT_SUCCESS"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->PREEMPTIVE_RECONNECT_SUCCESS:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 41
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "ABORTED_PREEMPTIVE_RECONNECT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->ABORTED_PREEMPTIVE_RECONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 42
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "AUTH_CREDENTIALS_CHANGE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->AUTH_CREDENTIALS_CHANGE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 43
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    const-string v1, "NETWORK_LOST"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->NETWORK_LOST:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 14
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERVICE_DESTROY:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERVICE_STOP:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KICK_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KICK_CONFIG_CHANGED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->KEEPALIVE_SHOULD_NOT_CONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->EXPIRE_CONNECTION:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->OPERATION_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->PING_UNRECEIVED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_EOF:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_SSL:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_IO:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_FORMAT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_EOF:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_SSL:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_IO:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->UNKNOWN_RUNTIME:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SEND_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->DISCONNECT_FROM_SERVER:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->SERIALIZER_FAILURE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->PREEMPTIVE_RECONNECT_SUCCESS:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->ABORTED_PREEMPTIVE_RECONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->AUTH_CREDENTIALS_CHANGE:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->NETWORK_LOST:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->$VALUES:[Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromReadException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;
    .locals 1

    .prologue
    .line 46
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 59
    :goto_0
    return-object v0

    .line 48
    :cond_1
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_2

    .line 49
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_EOF:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 50
    :cond_2
    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_3

    .line 51
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 52
    :cond_3
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_4

    .line 53
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_SSL:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 54
    :cond_4
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_5

    .line 55
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_IO:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 56
    :cond_5
    instance-of v0, p0, Ljava/util/zip/DataFormatException;

    if-eqz v0, :cond_6

    .line 57
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_FORMAT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 59
    :cond_6
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->READ_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0
.end method

.method public static getFromWriteException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;
    .locals 1

    .prologue
    .line 64
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_TIMEOUT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    .line 75
    :goto_0
    return-object v0

    .line 66
    :cond_1
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_EOF:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 68
    :cond_2
    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_SOCKET:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 70
    :cond_3
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_4

    .line 71
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_SSL:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 72
    :cond_4
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_5

    .line 73
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_IO:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0

    .line 75
    :cond_5
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->WRITE_FAILURE_UNCLASSIFIED:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->$VALUES:[Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    return-object v0
.end method
