.class public Lcom/facebook/quicklog/identifiers/Reactions;
.super Ljava/lang/Object;
.source "Reactions.java"


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
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 59
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 46
    :pswitch_1
    const-string v0, "REACTIONS_LOAD_INPUT_DOCK_WARM"

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v0, "REACTIONS_LOAD_INPUT_DOCK_COLD"

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v0, "REACTIONS_LOAD_REACTORS_LIST"

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v0, "REACTIONS_WAIT_TIME_REACTORS_LIST_CURRENT_TAB"

    goto :goto_0

    .line 54
    :pswitch_5
    const-string v0, "REACTIONS_LOAD_REACTORS_LIST_TAB"

    goto :goto_0

    .line 56
    :pswitch_6
    const-string v0, "REACTIONS_LOAD_REACTORS_LIST_ON_SCROLL"

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
