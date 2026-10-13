.class synthetic Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;
.super Ljava/lang/Object;
.source "FbnsConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$rti$mqtt$manager$FbnsConnectionManager$DisconnectReason:[I

.field static final synthetic $SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1461
    invoke-static {}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->values()[Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->SUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->UNSUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGREQ:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    .line 358
    :goto_5
    invoke-static {}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->values()[Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$manager$FbnsConnectionManager$DisconnectReason:[I

    :try_start_6
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$manager$FbnsConnectionManager$DisconnectReason:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->CONNECT_FAILED:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$manager$FbnsConnectionManager$DisconnectReason:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->CONNECTION_LOST:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$manager$FbnsConnectionManager$DisconnectReason:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->BY_REQUEST:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$8;->$SwitchMap$com$facebook$rti$mqtt$manager$FbnsConnectionManager$DisconnectReason:[I

    sget-object v1, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->PREEMPTIVE_RECONNECT_SUCCESS:Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/FbnsConnectionManager$DisconnectReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    .line 1461
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_0
.end method
