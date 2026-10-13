.class public Lcom/facebook/quicklog/identifiers/Snacks;
.super Ljava/lang/Object;
.source "Snacks.java"


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
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 46
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 39
    :pswitch_1
    const-string v0, "SNACKS_SHARESHEET_LOADING_TIME"

    goto :goto_0

    .line 41
    :pswitch_2
    const-string v0, "SNACKS_DIRECT_REPLY_THREAD_LOAD_TTI"

    goto :goto_0

    .line 43
    :pswitch_3
    const-string v0, "SNACKS_DIRECT_INBOX_LOAD_TTI"

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
