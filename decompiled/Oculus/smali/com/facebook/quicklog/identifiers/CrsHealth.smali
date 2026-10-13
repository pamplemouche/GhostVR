.class public Lcom/facebook/quicklog/identifiers/CrsHealth;
.super Ljava/lang/Object;
.source "CrsHealth.java"


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
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 39
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "CRS_HEALTH_FEED_DEDUPLICATION_ANDROID"

    goto :goto_0

    .line 36
    :pswitch_1
    const-string v0, "CRS_HEALTH_FEED_NIL_NODE_FILTER_IOS"

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
