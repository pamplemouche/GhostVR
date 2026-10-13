.class public Lcom/facebook/quicklog/identifiers/Logout;
.super Ljava/lang/Object;
.source "Logout.java"


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
    .line 92
    packed-switch p0, :pswitch_data_0

    .line 143
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 94
    :pswitch_1
    const-string v0, "LOGOUT_HANDLE_LOGOUT"

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "LOGOUT_BEFORE_LOGOUT"

    goto :goto_0

    .line 98
    :pswitch_3
    const-string v0, "LOGOUT_BEFORE_LOGOUT_COMPONENT"

    goto :goto_0

    .line 100
    :pswitch_4
    const-string v0, "LOGOUT_UNREGISTER_PUSH_TOKEN"

    goto :goto_0

    .line 102
    :pswitch_5
    const-string v0, "LOGOUT_UNREGISTER_PUSH_TOKEN_COMPONENT"

    goto :goto_0

    .line 104
    :pswitch_6
    const-string v0, "LOGOUT_EXPIRE_SESSION"

    goto :goto_0

    .line 106
    :pswitch_7
    const-string v0, "LOGOUT_LOGOUT_HELPER"

    goto :goto_0

    .line 108
    :pswitch_8
    const-string v0, "LOGOUT_AFTER_LOGOUT"

    goto :goto_0

    .line 110
    :pswitch_9
    const-string v0, "LOGOUT_AFTER_LOGOUT_COMPONENT"

    goto :goto_0

    .line 112
    :pswitch_a
    const-string v0, "LOGOUT_LOGOUT_COMPLETE"

    goto :goto_0

    .line 114
    :pswitch_b
    const-string v0, "LOGOUT_LOGOUT_COMPLETE_COMPONENT"

    goto :goto_0

    .line 116
    :pswitch_c
    const-string v0, "LOGOUT_CLEAR_PRIVACY_CRITICAL_KEYS"

    goto :goto_0

    .line 118
    :pswitch_d
    const-string v0, "LOGOUT_CLEAR_PRIVACY_CRITICAL_KEYS_COMPONENT"

    goto :goto_0

    .line 120
    :pswitch_e
    const-string v0, "LOGOUT_CLEAR_USER_DATA"

    goto :goto_0

    .line 122
    :pswitch_f
    const-string v0, "LOGOUT_CLEAR_USER_DATA_COMPONENT"

    goto :goto_0

    .line 124
    :pswitch_10
    const-string v0, "LOGOUT_CLEAR_USER_AUTH_DATA"

    goto :goto_0

    .line 126
    :pswitch_11
    const-string v0, "LOGOUT_UNREGISTER_PUSH_TOKEN_ASYNC"

    goto :goto_0

    .line 128
    :pswitch_12
    const-string v0, "LOGOUT_UNREGISTER_PUSH_TOKEN_COMPONENT_ASYNC"

    goto :goto_0

    .line 130
    :pswitch_13
    const-string v0, "LOGOUT_EXPIRE_SESSION_ASYNC"

    goto :goto_0

    .line 132
    :pswitch_14
    const-string v0, "LOGOUT_CLEAR_FB_APP_USER_DATA_COMPONENT"

    goto :goto_0

    .line 134
    :pswitch_15
    const-string v0, "LOGOUT_UNREGISTER_PUSH_TOKEN_ASYNC_TAG"

    goto :goto_0

    .line 136
    :pswitch_16
    const-string v0, "LOGOUT_HANDLE_DITTO_LOGOUT"

    goto :goto_0

    .line 138
    :pswitch_17
    const-string v0, "LOGOUT_APP_SESSION_CLEAR_USER_DATA"

    goto :goto_0

    .line 140
    :pswitch_18
    const-string v0, "LOGOUT_PRELOAD_COMPONENT"

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
