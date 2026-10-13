.class public Lcom/facebook/quicklog/identifiers/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"


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
    .line 47
    packed-switch p0, :pswitch_data_0

    .line 64
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    const-string v0, "NAVIGATION_SESSION"

    goto :goto_0

    .line 51
    :pswitch_2
    const-string v0, "NAVIGATION_BADGE_FETCH"

    goto :goto_0

    .line 53
    :pswitch_3
    const-string v0, "NAVIGATION_TAB_CLICK_PRE_CONTENT_INIT_SETUP"

    goto :goto_0

    .line 55
    :pswitch_4
    const-string v0, "NAVIGATION_TAB_CLICK_POST_CONTENT_INIT_SETUP"

    goto :goto_0

    .line 57
    :pswitch_5
    const-string v0, "NAVIGATION_TAB_SETUP"

    goto :goto_0

    .line 59
    :pswitch_6
    const-string v0, "NAVIGATION_FB4A_NAVIGATION_SETUP"

    goto :goto_0

    .line 61
    :pswitch_7
    const-string v0, "NAVIGATION_PRELOAD_MANAGER"

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
