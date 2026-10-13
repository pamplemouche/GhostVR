.class public Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;
.super Ljava/lang/Object;
.source "VideoAndTextStoryViewBinder.java"

# interfaces
.implements Lcom/oculus/horizon/feedbuilder/FeedViewBinder;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

.field private final mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

.field private final mShowVideoPreviewsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;->mShowVideoPreviewsProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;->mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

    .line 40
    new-instance v0, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-direct {v0, p3}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;-><init>(Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    .line 41
    return-void
.end method


# virtual methods
.method public bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;

    move-object v1, p2

    .line 46
    check-cast v1, Lcom/oculus/horizon/feed/model/FeedStory;

    .line 48
    invoke-virtual {v0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->reset()V

    .line 49
    iget-object v2, p0, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;->mHeaderViewBinder:Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;

    invoke-virtual {v2, p1, p2}, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;->bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V

    .line 51
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v2, v8}, Lcom/oculus/horizon/widget/MediaView;->setVisibility(I)V

    .line 52
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getMediaThumbnailUri()Landroid/net/Uri;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    iget-object v3, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v3, v2}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Landroid/net/Uri;)V

    .line 57
    :cond_0
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaDescriptionSpace:Landroid/widget/Space;

    invoke-virtual {v2, v8}, Landroid/widget/Space;->setVisibility(I)V

    .line 58
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getBodyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getDeeplinkUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->setDeeplinkUri(Landroid/net/Uri;)V

    .line 64
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getMedia()Lcom/oculus/horizon/feed/model/Media;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;->mShowVideoPreviewsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-object v2, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->fullScreenButton:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 71
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 72
    invoke-virtual {v4}, Lcom/oculus/horizon/widget/MediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/oculus/horizon/feed/FullScreenVideoPlayerActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v4, "extra_deeplink_uri"

    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getDeeplinkUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    const-string v4, "extra_icon_image_uri"

    .line 75
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getIconImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 74
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 77
    const-string v5, "extra_title"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 79
    iget-object v5, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 82
    invoke-virtual {v5}, Lcom/oculus/horizon/widget/MediaView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/oculus/horizon/R$string;->feed_title_formatting:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    const/4 v4, 0x1

    .line 86
    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 83
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 87
    const-string v5, "extra_description"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_3
    const-string v4, "extra_media"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    const-string v4, "extra_timestamp"

    invoke-virtual {v1}, Lcom/oculus/horizon/feed/model/FeedStory;->getDisplayTime()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->setFullScreenIntent(Landroid/content/Intent;)V

    .line 94
    :try_start_0
    iget-object v0, v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v3}, Lcom/oculus/horizon/feed/model/Media;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;->mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;->get(Lcom/oculus/horizon/feed/model/Media;)Lcom/oculus/horizon/feed/FeedVideoLogger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/MediaView;->loadVideo(Landroid/net/Uri;Lcom/oculus/horizon/media/MediaPlayerLogger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;->TAG:Ljava/lang/String;

    const-string v2, "Could not prepare MediaPlayer"

    invoke-static {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
