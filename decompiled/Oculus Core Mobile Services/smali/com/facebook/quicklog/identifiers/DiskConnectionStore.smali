.class public Lcom/facebook/quicklog/identifiers/DiskConnectionStore;
.super Ljava/lang/Object;
.source "DiskConnectionStore.java"


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

    .line 43
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 36
    :sswitch_0
    const-string v0, "DISK_CONNECTION_STORE_DISKCONNECTIONSTORE_ADD_PAGE"

    goto :goto_0

    .line 38
    :sswitch_1
    const-string v0, "DISK_CONNECTION_STORE_DISKCONNECTIONSTORE_INITIALIZE"

    goto :goto_0

    .line 40
    :sswitch_2
    const-string v0, "DISK_CONNECTION_STORE_CONSISTENCY_NOTIFICATION"

    goto :goto_0

    .line 34
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
