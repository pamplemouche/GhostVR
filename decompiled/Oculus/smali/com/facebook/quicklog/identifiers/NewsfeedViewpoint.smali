.class public Lcom/facebook/quicklog/identifiers/NewsfeedViewpoint;
.super Ljava/lang/Object;
.source "NewsfeedViewpoint.java"


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

    .line 47
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    const-string v0, "NEWSFEED_VIEWPOINT_LOAD"

    goto :goto_0

    .line 40
    :pswitch_1
    const-string v0, "NEWSFEED_VIEWPOINT_STORY_VIEWPOINT_ATTACH"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v0, "NEWSFEED_VIEWPOINT_LOGGING_ORGANIC"

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, "NEWSFEED_VIEWPOINT_LOGGING_SPONSORED"

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
