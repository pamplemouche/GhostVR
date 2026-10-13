.class public Lcom/facebook/quicklog/identifiers/MinutiaeObjectSelector;
.super Ljava/lang/Object;
.source "MinutiaeObjectSelector.java"


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
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 67
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_TIME_TO_INIT"

    goto :goto_0

    .line 50
    :pswitch_1
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_TIME_TO_FETCH_START"

    goto :goto_0

    .line 52
    :pswitch_2
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_TIME_TO_FETCH_END"

    goto :goto_0

    .line 54
    :pswitch_3
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_TIME_TO_RESULTS_SHOWN"

    goto :goto_0

    .line 56
    :pswitch_4
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_FETCH_TIME"

    goto :goto_0

    .line 58
    :pswitch_5
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_TIME_TO_FETCH_END_CACHED"

    goto :goto_0

    .line 60
    :pswitch_6
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_TIME_TO_RESULTS_SHOWN_CACHED"

    goto :goto_0

    .line 62
    :pswitch_7
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_FETCH_TIME_CACHED"

    goto :goto_0

    .line 64
    :pswitch_8
    const-string v0, "MINUTIAE_OBJECT_SELECTOR_TIME_TO_SCROLL_LOAD"

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
