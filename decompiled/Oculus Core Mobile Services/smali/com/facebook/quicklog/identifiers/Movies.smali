.class public Lcom/facebook/quicklog/identifiers/Movies;
.super Ljava/lang/Object;
.source "Movies.java"


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
    .line 54
    packed-switch p0, :pswitch_data_0

    .line 83
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 56
    :pswitch_1
    const-string v0, "MOVIES_MOVIES_PERMALINK_HEADER_FETCH_TTI"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "Movies Permalink TTI"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "MOVIES_SHOWTIME_PICKER_TTI"

    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "MOVIES_SHOWTIME_PICKER_FETCH_TTI"

    goto :goto_0

    .line 64
    :pswitch_5
    const-string v0, "MOVIES_MOVIES_HOME_MOVIES_TAB_TTI_ANDROID"

    goto :goto_0

    .line 66
    :pswitch_6
    const-string v0, "MOVIES_MOVIES_HOME_MOVIES_TAB_TTI_FETCH_ANDROID"

    goto :goto_0

    .line 68
    :pswitch_7
    const-string v0, "MOVIES_MOVIES_HOME_THEATERS_TAB_TTI_ANDROID"

    goto :goto_0

    .line 70
    :pswitch_8
    const-string v0, "MOVIES_MOVIES_HOME_THEATERS_TAB_TTI_FETCH_ANDROID"

    goto :goto_0

    .line 72
    :pswitch_9
    const-string v0, "MOVIES_MOVIES_NATIVE_CHECKOUT_TICKETS_TTRC_ANDROID"

    goto :goto_0

    .line 74
    :pswitch_a
    const-string v0, "MOVIES_MOVIES_NATIVE_CHECKOUT_SEATMAP_TTRC_ANDROID"

    goto :goto_0

    .line 76
    :pswitch_b
    const-string v0, "MOVIES_MOVIES_NATIVE_CHECKOUT_PAYMENTS_TTRC_ANDROID"

    goto :goto_0

    .line 78
    :pswitch_c
    const-string v0, "MOVIES_MOVIES_NATIVE_CHECKOUT_CONFIRMATION_TTRC_ANDROID"

    goto :goto_0

    .line 80
    :pswitch_d
    const-string v0, "MOVIES_MOVIES_NATIVE_CHECKOUT_ORDER_DETAILS_TTRC_ANDROID"

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
