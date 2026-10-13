.class public Lcom/facebook/quicklog/identifiers/ProfileAboutRn;
.super Ljava/lang/Object;
.source "ProfileAboutRn.java"


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
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 69
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    const-string v0, "PROFILE_ABOUT_RN_PROFILE_ABOUT_OVERVIEW_TTI"

    goto :goto_0

    .line 54
    :pswitch_1
    const-string v0, "PROFILE_ABOUT_RN_PROFILE_ABOUT_PROTILES_TTI"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "PROFILE_ABOUT_RN_PROFILE_ABOUT_FIELDS_TTI"

    goto :goto_0

    .line 58
    :pswitch_3
    const-string v0, "PROFILE_ABOUT_RN_PROFILE_ABOUT_APPS_TTI"

    goto :goto_0

    .line 60
    :pswitch_4
    const-string v0, "PROFILE_ABOUT_RN_PROFILE_ABOUT_TTI"

    goto :goto_0

    .line 62
    :pswitch_5
    const-string v0, "PROFILE_ABOUT_RN_PROFILE_SELF_ABOUT_TTI"

    goto :goto_0

    .line 64
    :pswitch_6
    const-string v0, "PROFILE_ABOUT_RN_PROFILE_ABOUT_INITIAL_LOAD_TTRC"

    goto :goto_0

    .line 66
    :pswitch_7
    const-string v0, "PROFILE_ABOUT_RN_PROFILE_ABOUT_INITIAL_LOAD_TTRC_ANDROID"

    goto :goto_0

    .line 50
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
    .end packed-switch
.end method
