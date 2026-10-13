.class public Lcom/oculus/horizon/legacy/feed/view/TextStoryViewBinder;
.super Ljava/lang/Object;
.source "TextStoryViewBinder.java"

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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;-><init>(Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/feed/view/TextStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    .line 20
    return-void
.end method


# virtual methods
.method public bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V
    .locals 4

    .prologue
    move-object v0, p1

    .line 24
    check-cast v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;

    move-object v1, p2

    .line 25
    check-cast v1, Lcom/oculus/horizon/feed/model/FeedStory;

    .line 27
    invoke-virtual {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->reset()V

    .line 28
    iget-object v2, p0, Lcom/oculus/horizon/legacy/feed/view/TextStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;->bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V

    .line 29
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->descriptionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getBodyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getDeeplinkUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->setDeeplinkUri(Landroid/net/Uri;)V

    .line 33
    return-void
.end method
