.class public Lcom/oculus/horizon/feed/model/FeedStory;
.super Ljava/lang/Object;
.source "FeedStory.java"

# interfaces
.implements Lcom/oculus/horizon/feedbuilder/FeedItem;


# instance fields
.field private final mActors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttachments:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/FeedAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final mBodyText:Ljava/lang/String;

.field private final mDeeplinkUri:Landroid/net/Uri;

.field private final mDisplayTime:J

.field private final mRenderStyles:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoryId:Ljava/lang/String;

.field private final mSubtitle:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/Actor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/FeedAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mStoryId:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mActors:Lcom/google/common/collect/ImmutableList;

    .line 67
    iput-object p3, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mTitle:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mSubtitle:Ljava/lang/String;

    .line 69
    iput-wide p5, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mDisplayTime:J

    .line 70
    iput-object p7, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mBodyText:Ljava/lang/String;

    .line 71
    iput-object p8, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mDeeplinkUri:Landroid/net/Uri;

    .line 72
    iput-object p9, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mRenderStyles:Lcom/google/common/collect/ImmutableList;

    .line 73
    iput-object p10, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mAttachments:Lcom/google/common/collect/ImmutableList;

    .line 74
    return-void
.end method

.method static fromResponse(Lcom/oculus/horizon/api/feed/FeedStoryResponse;)Lcom/oculus/horizon/feed/model/FeedStory;
    .locals 12

    .prologue
    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/feed/ActorResponse;

    .line 30
    invoke-static {v0}, Lcom/oculus/horizon/feed/model/Actor;->fromResponse(Lcom/oculus/horizon/api/feed/ActorResponse;)Lcom/oculus/horizon/feed/model/Actor;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->attachments:Lcom/oculus/horizon/api/feed/FeedStoryResponse$Attachments;

    iget-object v0, v0, Lcom/oculus/horizon/api/feed/FeedStoryResponse$Attachments;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/feed/FeedAttachmentResponse;

    .line 35
    invoke-static {v0}, Lcom/oculus/horizon/feed/model/FeedAttachment;->fromResponse(Lcom/oculus/horizon/api/feed/FeedAttachmentResponse;)Lcom/oculus/horizon/feed/model/FeedAttachment;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->render_styles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    :cond_2
    new-instance v1, Lcom/oculus/horizon/feed/model/FeedStory;

    iget-object v2, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->id:Ljava/lang/String;

    .line 45
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->subtitle:Ljava/lang/String;

    iget-wide v6, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->display_time:J

    iget-object v8, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->body_text:Ljava/lang/String;

    iget-object v0, p0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;->deeplink:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 51
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    .line 52
    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lcom/oculus/horizon/feed/model/FeedStory;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method


# virtual methods
.method public getActors()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mActors:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getAttachments()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/FeedAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mAttachments:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mBodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mDeeplinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mDisplayTime:J

    return-wide v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getActors()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getActors()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/model/Actor;

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/Actor;->getIcon()Lcom/oculus/horizon/feed/model/StoryMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/StoryMedia;->getThumbnail()Lcom/oculus/horizon/feed/model/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mStoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Lcom/oculus/horizon/feed/model/Media;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getAttachments()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getAttachments()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/model/FeedAttachment;

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/FeedAttachment;->getMedia()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getAttachments()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/model/FeedAttachment;

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/FeedAttachment;->getMedia()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/model/StoryMedia;

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/StoryMedia;->getMedia()Lcom/oculus/horizon/feed/model/Media;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaThumbnailUri()Landroid/net/Uri;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getAttachments()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getAttachments()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/model/FeedAttachment;

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/FeedAttachment;->getMedia()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getAttachments()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/model/FeedAttachment;

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/FeedAttachment;->getMedia()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/feed/model/StoryMedia;

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/StoryMedia;->getThumbnail()Lcom/oculus/horizon/feed/model/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/feed/model/Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getRenderStyles()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mRenderStyles:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getRenderStyles()Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/model/FeedStory;->getRenderStyles()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedStory;->mTitle:Ljava/lang/String;

    return-object v0
.end method
