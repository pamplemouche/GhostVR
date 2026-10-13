.class public Lcom/facebook/quicklog/identifiers/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


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
    .line 36
    packed-switch p0, :pswitch_data_0

    .line 45
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    const-string v0, "SignalAuthComponentsOnAuthComplete"

    goto :goto_0

    .line 40
    :pswitch_1
    const-string v0, "AUTH_APP_ONCREATE"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v0, "AUTH_HANDLE_DITTO_LOGOUT"

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
