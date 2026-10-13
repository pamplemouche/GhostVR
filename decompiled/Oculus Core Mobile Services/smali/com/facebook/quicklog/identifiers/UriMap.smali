.class public Lcom/facebook/quicklog/identifiers/UriMap;
.super Ljava/lang/Object;
.source "UriMap.java"


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
    .line 72
    packed-switch p0, :pswitch_data_0

    .line 115
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 74
    :pswitch_1
    const-string v0, "URI_MAP_URI_MAPPING"

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v0, "URI_MAP_FACEWEB_FALLBACK"

    goto :goto_0

    .line 78
    :pswitch_3
    const-string v0, "URI_MAP_GOOGLE_PLAY"

    goto :goto_0

    .line 80
    :pswitch_4
    const-string v0, "URI_MAP_FACEWEB"

    goto :goto_0

    .line 82
    :pswitch_5
    const-string v0, "URI_MAP_DEEP_LINK"

    goto :goto_0

    .line 84
    :pswitch_6
    const-string v0, "URI_MAP_MESSENGER"

    goto :goto_0

    .line 86
    :pswitch_7
    const-string v0, "URI_MAP_DIODE"

    goto :goto_0

    .line 88
    :pswitch_8
    const-string v0, "URI_MAP_WEBVIEW_REDIRECT"

    goto :goto_0

    .line 90
    :pswitch_9
    const-string v0, "URI_MAP_FACEBOOK_URL"

    goto :goto_0

    .line 92
    :pswitch_a
    const-string v0, "URI_MAP_THIRD_PARTY"

    goto :goto_0

    .line 94
    :pswitch_b
    const-string v0, "URI_MAP_FACEWEB_INTENT"

    goto :goto_0

    .line 96
    :pswitch_c
    const-string v0, "URI_MAP_URI_LOOKUP_STATIC"

    goto :goto_0

    .line 98
    :pswitch_d
    const-string v0, "URI_MAP_URI_LOOKUP_FALLBACK"

    goto :goto_0

    .line 100
    :pswitch_e
    const-string v0, "URI_MAP_APP_MANAGER_INTENT"

    goto :goto_0

    .line 102
    :pswitch_f
    const-string v0, "URI_MAP_SMS_INTENT"

    goto :goto_0

    .line 104
    :pswitch_10
    const-string v0, "URI_MAP_SIGN"

    goto :goto_0

    .line 106
    :pswitch_11
    const-string v0, "URI_MAP_MULTI_BINDING"

    goto :goto_0

    .line 108
    :pswitch_12
    const-string v0, "URI_MAP_URI_LOOKUP_DFA"

    goto :goto_0

    .line 110
    :pswitch_13
    const-string v0, "URI_MAP_REACT_NATIVE"

    goto :goto_0

    .line 112
    :pswitch_14
    const-string v0, "URI_MAP_WEBVIEW_URI_REDIRECTOR_CONSTRUCT"

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
