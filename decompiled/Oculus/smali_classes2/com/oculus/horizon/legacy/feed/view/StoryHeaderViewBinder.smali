.class public Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;
.super Ljava/lang/Object;
.source "StoryHeaderViewBinder.java"

# interfaces
.implements Lcom/oculus/horizon/feedbuilder/FeedViewBinder;


# instance fields
.field private final mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;->mLocaleProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method


# virtual methods
.method public bindView(Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;Lcom/oculus/horizon/feedbuilder/FeedItem;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 29
    iget-object v0, p1, Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 30
    check-cast p1, Lcom/oculus/horizon/feed/view/StoryViewHolder;

    .line 31
    check-cast p2, Lcom/oculus/horizon/feed/model/FeedStory;

    .line 34
    invoke-virtual {p2}, Lcom/oculus/horizon/feed/model/FeedStory;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget v0, Lcom/oculus/horizon/R$string;->feed_title_formatting:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p2}, Lcom/oculus/horizon/feed/model/FeedStory;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/oculus/horizon/feed/model/FeedStory;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 36
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    iget-object v2, p1, Lcom/oculus/horizon/feed/view/StoryViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p2}, Lcom/oculus/horizon/feed/model/FeedStory;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p2}, Lcom/oculus/horizon/feed/model/FeedStory;->getDisplayTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/view/StoryHeaderViewBinder;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 45
    invoke-static {v1, v2, v3, v0}, Lcom/oculus/horizon/util/DateUtils;->formatWithTodayYesterday(Landroid/content/Context;JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p1, Lcom/oculus/horizon/feed/view/StoryViewHolder;->timestampTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p1, Lcom/oculus/horizon/feed/view/StoryViewHolder;->iconImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 50
    iget-object v0, p1, Lcom/oculus/horizon/feed/view/StoryViewHolder;->iconImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/oculus/horizon/feed/model/FeedStory;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 51
    return-void

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/oculus/horizon/feed/model/FeedStory;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
