.class public Lcom/facebook/quicklog/identifiers/ColdStart;
.super Ljava/lang/Object;
.source "ColdStart.java"


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
    .line 34
    sparse-switch p0, :sswitch_data_0

    .line 47
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 36
    :sswitch_0
    const-string v0, "COLD_START_FBAPPIMPL_ON_CREATE"

    goto :goto_0

    .line 38
    :sswitch_1
    const-string v0, "COLD_START_CREATE_DELEGATE"

    goto :goto_0

    .line 40
    :sswitch_2
    const-string v0, "COLD_START_BASE_CONTEXT_ATTACHED"

    goto :goto_0

    .line 42
    :sswitch_3
    const-string v0, "COLD_START_ENSURE_DEXS_LOADED"

    goto :goto_0

    .line 44
    :sswitch_4
    const-string v0, "COLD_START_APPLICATION_CREATE"

    goto :goto_0

    .line 34
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method
