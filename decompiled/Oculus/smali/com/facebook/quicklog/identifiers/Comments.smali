.class public Lcom/facebook/quicklog/identifiers/Comments;
.super Ljava/lang/Object;
.source "Comments.java"


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
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 67
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 48
    :pswitch_1
    const-string v0, "COMMENTS_COMMENTS_TTRC"

    goto :goto_0

    .line 50
    :pswitch_2
    const-string v0, "COMMENTS_POST_COMMENT"

    goto :goto_0

    .line 52
    :pswitch_3
    const-string v0, "COMMENTS_COMPOSE_COMMENT"

    goto :goto_0

    .line 54
    :pswitch_4
    const-string v0, "COMMENTS_ATTACH_COMMENT_COMPOSER"

    goto :goto_0

    .line 56
    :pswitch_5
    const-string v0, "COMMENTS_DELETE_COMMENT"

    goto :goto_0

    .line 58
    :pswitch_6
    const-string v0, "COMMENTS_RENDER_FEED_STORY"

    goto :goto_0

    .line 60
    :pswitch_7
    const-string v0, "COMMENTS_CLICK"

    goto :goto_0

    .line 62
    :pswitch_8
    const-string v0, "COMMENTS_FUNNEL_EVENT"

    goto :goto_0

    .line 64
    :pswitch_9
    const-string v0, "COMMENTS_COMPOSER_VISIBILITY"

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
