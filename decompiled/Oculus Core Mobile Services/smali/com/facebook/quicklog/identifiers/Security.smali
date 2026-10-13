.class public Lcom/facebook/quicklog/identifiers/Security;
.super Ljava/lang/Object;
.source "Security.java"


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
    .line 51
    packed-switch p0, :pswitch_data_0

    .line 70
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 53
    :pswitch_1
    const-string v0, "SECURITY_USE_STORAGE_KEY_LOGIN"

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v0, "SECURITY_USE_STORAGE_KEY_LOGOUT"

    goto :goto_0

    .line 57
    :pswitch_3
    const-string v0, "SECURITY_USER_STORAGE_KEY_UNAVAILABLE_ENCRYPT"

    goto :goto_0

    .line 59
    :pswitch_4
    const-string v0, "SECURITY_USER_STORAGE_KEY_UNAVAILABLE_DECRYPT"

    goto :goto_0

    .line 61
    :pswitch_5
    const-string v0, "SECURITY_USER_STORAGE_KEY_LOGIN_CRYPTO_UNAVAILABLE"

    goto :goto_0

    .line 63
    :pswitch_6
    const-string v0, "SECURITY_USER_STORAGE_KEY_LOGIN_INVALID_KEY"

    goto :goto_0

    .line 65
    :pswitch_7
    const-string v0, "SECURITY_USER_STORAGE_KEY_LOGIN_MISSING_KEY"

    goto :goto_0

    .line 67
    :pswitch_8
    const-string v0, "SECURITY_USER_STORAGE_KEY_DECRYPT_NEEDS_UPDATE"

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
