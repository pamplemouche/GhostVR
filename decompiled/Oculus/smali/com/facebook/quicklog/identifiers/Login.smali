.class public Lcom/facebook/quicklog/identifiers/Login;
.super Ljava/lang/Object;
.source "Login.java"


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
    .line 64
    packed-switch p0, :pswitch_data_0

    .line 101
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 66
    :pswitch_1
    const-string v0, "NewLogin"

    goto :goto_0

    .line 68
    :pswitch_2
    const-string v0, "LoginToBeforeFeedFetch"

    goto :goto_0

    .line 70
    :pswitch_3
    const-string v0, "LOGIN_FETCH_LOGIN_DATA_TTI"

    goto :goto_0

    .line 72
    :pswitch_4
    const-string v0, "LOGIN_FETCH_LOGIN_COMPONENTS"

    goto :goto_0

    .line 74
    :pswitch_5
    const-string v0, "LOGIN_SILENT_LOGIN"

    goto :goto_0

    .line 76
    :pswitch_6
    const-string v0, "ColdStartNuxTTI"

    goto :goto_0

    .line 78
    :pswitch_7
    const-string v0, "LOGIN_LOAD_PERSISTENT_COMPONENTS"

    goto :goto_0

    .line 80
    :pswitch_8
    const-string v0, "LOGIN_FETCH_PERSISTENT_COMPONENTS"

    goto :goto_0

    .line 82
    :pswitch_9
    const-string v0, "LOGIN_LOGOUT"

    goto :goto_0

    .line 84
    :pswitch_a
    const-string v0, "LoginToFeedStory"

    goto :goto_0

    .line 86
    :pswitch_b
    const-string v0, "Authentication"

    goto :goto_0

    .line 88
    :pswitch_c
    const-string v0, "InterstitialPreparation"

    goto :goto_0

    .line 90
    :pswitch_d
    const-string v0, "AppCreateToLoginActivityCreate"

    goto :goto_0

    .line 92
    :pswitch_e
    const-string v0, "LOGIN_LOAD_ACTIVITY_AFTER_FETCH_IG_LINKED_FBID"

    goto :goto_0

    .line 94
    :pswitch_f
    const-string v0, "Fb4aLoginTTI"

    goto :goto_0

    .line 96
    :pswitch_10
    const-string v0, "LOGIN_LOAD_PARALLEL_COMPONENTS"

    goto :goto_0

    .line 98
    :pswitch_11
    const-string v0, "LOGIN_LIAS_ANDROID"

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
