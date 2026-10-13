.class public Lcom/oculus/horizon/legacy/feed/view/MediaStoryViewBinder;
.super Ljava/lang/Object;
.source "MediaStoryViewBinder.java"

# interfaces
.implements Lcom/oculus/horizon/feedbuilder/FeedViewBinder;


# instance fields
.field private final mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;-><init>(Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/feed/view/MediaStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    .line 23
    return-void
.end method


# virtual methods
.method public bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V
    .locals 4

    .prologue
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;

    move-object v1, p2

    .line 28
    check-cast v1, Lcom/oculus/horizon/feed/model/FeedStory;

    .line 30
    invoke-virtual {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->reset()V

    .line 31
    iget-object v2, p0, Lcom/oculus/horizon/legacy/feed/view/MediaStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;->bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V

    .line 33
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/MediaView;->setVisibility(I)V

    .line 34
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getMediaThumbnailUri()Landroid/net/Uri;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    iget-object v3, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v3, v2}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Landroid/net/Uri;)V

    .line 39
    :cond_0
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getDeeplinkUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->setDeeplinkUri(Landroid/net/Uri;)V

    .line 40
    return-void
.end method
