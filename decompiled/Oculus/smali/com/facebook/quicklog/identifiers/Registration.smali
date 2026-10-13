.class public Lcom/facebook/quicklog/identifiers/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


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
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 42
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    const-string v0, "REGISTRATION_PERF_LOGGING_ACCOUNT_CREATION"

    goto :goto_0

    .line 37
    :pswitch_1
    const-string v0, "REGISTRATION_PERF_LOGGING_STEP_VALIDATION"

    goto :goto_0

    .line 39
    :pswitch_2
    const-string v0, "REGISTRATION_PERF_LOGGING_REGISTRATION_LOGIN"

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
