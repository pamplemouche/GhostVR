.class public Lcom/oculus/horizon/legacy/feed/view/NotificationStoryViewBinder;
.super Ljava/lang/Object;
.source "NotificationStoryViewBinder.java"

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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;-><init>(Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/feed/view/NotificationStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    .line 19
    return-void
.end method


# virtual methods
.method public bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V
    .locals 3

    .prologue
    move-object v0, p1

    .line 23
    check-cast v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;

    move-object v1, p2

    .line 24
    check-cast v1, Lcom/oculus/horizon/feed/model/FeedStory;

    .line 26
    invoke-virtual {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->reset()V

    .line 27
    iget-object v2, p0, Lcom/oculus/horizon/legacy/feed/view/NotificationStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;->bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V

    .line 29
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getDeeplinkUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->setDeeplinkUri(Landroid/net/Uri;)V

    .line 30
    return-void
.end method
