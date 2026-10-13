.class public Lcom/facebook/quicklog/identifiers/Relay;
.super Ljava/lang/Object;
.source "Relay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sparse-switch p0, :sswitch_data_0

    .line 57
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 44
    :sswitch_0
    const-string v0, "RELAY_GROUPS_INIT_FETCH_TIME"

    goto :goto_0

    .line 46
    :sswitch_1
    const-string v0, "RELAY_RELAY_PLAYGROUND_TTI"

    goto :goto_0

    .line 48
    :sswitch_2
    const-string v0, "RELAY_PREFETCHER_FETCH_QUERY"

    goto :goto_0

    .line 50
    :sswitch_3
    const-string v0, "RELAY_NETWORK_FETCH_QUERY_NATIVE"

    goto :goto_0

    .line 52
    :sswitch_4
    const-string v0, "RELAY_RESPONSE_NORMALIZER_NORMALIZE_NATIVE"

    goto :goto_0

    .line 54
    :sswitch_5
    const-string v0, "RELAY_RUNTIME_GC_NATIVE"

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_5
    .end sparse-switch
.end method
