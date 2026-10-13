.class public Lcom/oculus/horizon/legacy/feed/view/MediaAndTextStoryViewBinder;
.super Ljava/lang/Object;
.source "MediaAndTextStoryViewBinder.java"

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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;-><init>(Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/feed/view/MediaAndTextStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    .line 26
    return-void
.end method


# virtual methods
.method public bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    move-object v0, p1

    .line 30
    check-cast v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;

    move-object v1, p2

    .line 31
    check-cast v1, Lcom/oculus/horizon/feed/model/FeedStory;

    .line 33
    invoke-virtual {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->reset()V

    .line 34
    iget-object v2, p0, Lcom/oculus/horizon/legacy/feed/view/MediaAndTextStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;->bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V

    .line 36
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v2, v4}, Lcom/oculus/horizon/widget/MediaView;->setVisibility(I)V

    .line 37
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getMediaThumbnailUri()Landroid/net/Uri;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    iget-object v3, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v3, v2}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Landroid/net/Uri;)V

    .line 42
    :cond_0
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaDescriptionSpace:Landroid/widget/Space;

    invoke-virtual {v2, v4}, Landroid/widget/Space;->setVisibility(I)V

    .line 44
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getBodyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getDeeplinkUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->setDeeplinkUri(Landroid/net/Uri;)V

    .line 48
    return-void
.end method
