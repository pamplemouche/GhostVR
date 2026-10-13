.class public Lcom/facebook/quicklog/identifiers/VideoChatLinks;
.super Ljava/lang/Object;
.source "VideoChatLinks.java"


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
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 51
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string v0, "VIDEO_CHAT_LINKS_CREATE_LINK_MOBILE"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "VIDEO_CHAT_LINKS_REVOKE_LINK_MOBILE"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "VIDEO_CHAT_LINKS_RESOLVE_LINK_MOBILE"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "VIDEO_CHAT_LINKS_ENTER_ROOM_MOBILE"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "VIDEO_CHAT_LINKS_GET_HOST_MOBILE"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
