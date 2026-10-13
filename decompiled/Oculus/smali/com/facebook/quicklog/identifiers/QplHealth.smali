.class public Lcom/facebook/quicklog/identifiers/QplHealth;
.super Ljava/lang/Object;
.source "QplHealth.java"


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
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 51
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string v0, "QPL_HEALTH_LOCKLESS_QUEUE_SIZE"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "QPL_HEALTH_LOCKLESS_MARKER_START"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "QPL_HEALTH_ZERO_SAMPLE_RATE_DUE_MISSING_EVENT_IN_CONFIG"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "QPL_HEALTH_ZERO_SAMPLE_RATE_DUE_MISSING_CONFIG"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "QPL_HEALTH_LOCKLESS_IS_MARKER_ON_ACCURACY"

    goto :goto_0

    .line 38
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
