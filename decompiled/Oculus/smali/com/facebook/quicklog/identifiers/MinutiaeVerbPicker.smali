.class public Lcom/facebook/quicklog/identifiers/MinutiaeVerbPicker;
.super Ljava/lang/Object;
.source "MinutiaeVerbPicker.java"


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
    packed-switch p0, :pswitch_data_0

    .line 61
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 44
    :pswitch_1
    const-string v0, "MINUTIAE_VERB_PICKER_TIME_TO_INIT"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "MINUTIAE_VERB_PICKER_TIME_TO_FETCH_START"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "MINUTIAE_VERB_PICKER_TIME_TO_FETCH_END"

    goto :goto_0

    .line 50
    :pswitch_4
    const-string v0, "MINUTIAE_VERB_PICKER_FETCH_TIME"

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "MINUTIAE_VERB_PICKER_TIME_TO_FETCH_END_CACHED"

    goto :goto_0

    .line 54
    :pswitch_6
    const-string v0, "MINUTIAE_VERB_PICKER_TIME_TO_RESULTS_SHOWN_CACHED"

    goto :goto_0

    .line 56
    :pswitch_7
    const-string v0, "MINUTIAE_VERB_PICKER_FETCH_TIME_CACHED"

    goto :goto_0

    .line 58
    :pswitch_8
    const-string v0, "MINUTIAE_VERB_PICKER_TIME_TO_RESULTS_SHOWN"

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
