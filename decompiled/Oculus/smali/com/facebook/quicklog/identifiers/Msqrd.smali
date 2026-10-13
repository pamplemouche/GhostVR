.class public Lcom/facebook/quicklog/identifiers/Msqrd;
.super Ljava/lang/Object;
.source "Msqrd.java"


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
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 55
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "MSQRD_BENCHMARK_RUN"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "MSQRD_AML_FACETRACKER_HIGH_POLY"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "MSQRD_AML_FACETRACKER_SUPER_HIGH_POLY"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "MSQRD_AML_FACETRACKER_HIGH_POLY_100"

    goto :goto_0

    .line 50
    :pswitch_5
    const-string v0, "MSQRD_AML_FACETRACKER_SUPER_HIGH_POLY_100"

    goto :goto_0

    .line 52
    :pswitch_6
    const-string v0, "MSQRD_FACETRACKER_SINGLE_FRAME"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
