.class public Lcom/facebook/quicklog/identifiers/Aboutpage;
.super Ljava/lang/Object;
.source "Aboutpage.java"


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
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 54
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 43
    :pswitch_1
    const-string v0, "ABOUTPAGE_COLLECTION_LOAD"

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "ABOUTPAGE_COLLECTION_REFRESH"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "ABOUTPAGE_COLLECTION_SCROLL_FETCH"

    goto :goto_0

    .line 49
    :pswitch_4
    const-string v0, "ABOUTPAGE_COLLECTION_REFRESH_ON_RECONNECT"

    goto :goto_0

    .line 51
    :pswitch_5
    const-string v0, "ABOUTPAGE_COLLECTION_PTR"

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
