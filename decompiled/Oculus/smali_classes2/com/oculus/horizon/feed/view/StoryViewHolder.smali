.class public Lcom/oculus/horizon/feed/view/StoryViewHolder;
.super Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;
.source "StoryViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;,
        Lcom/oculus/horizon/feed/view/StoryViewHolder$TapActionClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final descriptionTextView:Landroid/widget/TextView;

.field public final fullScreenButton:Landroid/view/View;

.field public final iconImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mDeeplinkUri:Landroid/net/Uri;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFullScreenIntent:Landroid/content/Intent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mOnClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaDescriptionSpace:Landroid/widget/Space;

.field public final mediaView:Lcom/oculus/horizon/widget/MediaView;

.field public final messageTextView:Landroid/widget/TextView;

.field public final optionsButton:Landroid/widget/ImageView;

.field public final timestampTextView:Landroid/widget/TextView;

.field public final titleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oculus/horizon/feedbuilder/BaseFeedViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mOnClickListeners:Ljava/util/List;

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->feed_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->iconImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->feed_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/oculus/horizon/R$id;->feed_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->messageTextView:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->feed_timestamp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->timestampTextView:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/oculus/horizon/R$id;->media_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/MediaView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 58
    sget v0, Lcom/oculus/horizon/R$id;->feed_media_description_space:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaDescriptionSpace:Landroid/widget/Space;

    .line 59
    sget v0, Lcom/oculus/horizon/R$id;->feed_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->descriptionTextView:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/oculus/horizon/R$id;->full_screen_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->fullScreenButton:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->fullScreenButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/feed/view/StoryViewHolder$FullScreenClickListener;-><init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;Lcom/oculus/horizon/feed/view/StoryViewHolder$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v0, Lcom/oculus/horizon/R$id;->options_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->optionsButton:Landroid/widget/ImageView;

    .line 66
    invoke-direct {p0}, Lcom/oculus/horizon/feed/view/StoryViewHolder;->initButtonOnClickListeners()V

    .line 67
    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mOnClickListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mDeeplinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/feed/view/StoryViewHolder;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mFullScreenIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static inflateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->story_feed_view:I

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initButtonOnClickListeners()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    new-instance v0, Lcom/oculus/horizon/feed/view/StoryViewHolder$TapActionClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/feed/view/StoryViewHolder$TapActionClickListener;-><init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;Lcom/oculus/horizon/feed/view/StoryViewHolder$1;)V

    .line 74
    iget-object v1, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/oculus/horizon/feed/view/StoryViewHolder$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/feed/view/StoryViewHolder$1;-><init>(Lcom/oculus/horizon/feed/view/StoryViewHolder;)V

    .line 85
    iget-object v1, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method


# virtual methods
.method public addOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mOnClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->reset()V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/MediaView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mediaDescriptionSpace:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->iconImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->fullScreenButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iput-object v2, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mDeeplinkUri:Landroid/net/Uri;

    .line 104
    iput-object v2, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mFullScreenIntent:Landroid/content/Intent;

    .line 105
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    return-void
.end method

.method public setBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    return-void
.end method

.method public setDeeplinkUri(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mDeeplinkUri:Landroid/net/Uri;

    .line 109
    return-void
.end method

.method public setFullScreenIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oculus/horizon/feed/view/StoryViewHolder;->mFullScreenIntent:Landroid/content/Intent;

    .line 113
    return-void
.end method
