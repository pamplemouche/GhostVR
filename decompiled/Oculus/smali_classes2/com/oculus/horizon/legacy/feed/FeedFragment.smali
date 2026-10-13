.class public Lcom/oculus/horizon/legacy/feed/FeedFragment;
.super Lcom/oculus/horizon/feed/BaseFeedFragment;
.source "FeedFragment.java"

# interfaces
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mFeedMethods:Lcom/oculus/horizon/legacy/feed/FeedMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mShowVideoPreviews:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_feed_video_preview"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/feed/FeedFragment;)V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/feed/FeedFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/feed/FeedFragment;)V
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oculus/horizon/legacy/feed/FeedMethods;->$ul_$xXXcom_oculus_horizon_legacy_feed_FeedMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/feed/FeedMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mFeedMethods:Lcom/oculus/horizon/legacy/feed/FeedMethods;

    invoke-static {p0}, Lcom/oculus/horizon/feed/FeedVideoLogger;->$ul_$xXXcom_oculus_horizon_feed_FeedVideoLoggerProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/feed/FeedModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Ffeed$x5Fvideo$x5Fpreview$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mShowVideoPreviews:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;->$ul_$xXXcom_oculus_horizon_feed_view_StoryViewHolderFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mLocaleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/oculus/horizon/legacy/feed/FeedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mScrollToId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mScrollToId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oculus/horizon/legacy/feed/FeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mScrollToId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oculus/horizon/legacy/feed/FeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    return-void
.end method

.method private fetchFeed()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mFeedMethods:Lcom/oculus/horizon/legacy/feed/FeedMethods;

    new-instance v1, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/legacy/feed/FeedFragment$1;-><init>(Lcom/oculus/horizon/legacy/feed/FeedFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/feed/FeedMethods;->getFeed(Lretrofit/Callback;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FEED:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/oculus/horizon/feed/BaseFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/feed/FeedFragment;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->setHasOptionsMenu(Z)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    sget v0, Lcom/oculus/horizon/R$layout;->feed_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 115
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->FEED:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->feed_name_main:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/feed/BaseFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    const-string v1, "notification_story"

    new-instance v2, Lcom/oculus/horizon/legacy/feed/view/NotificationStoryViewBinder;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-direct {v2, v3}, Lcom/oculus/horizon/legacy/feed/view/NotificationStoryViewBinder;-><init>(Ljavax/inject/Provider;)V

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->register(Ljava/lang/String;Lcom/oculus/horizon/feedbuilder/FeedViewBinder;Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;)V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    const-string v1, "media_story"

    new-instance v2, Lcom/oculus/horizon/legacy/feed/view/MediaStoryViewBinder;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-direct {v2, v3}, Lcom/oculus/horizon/legacy/feed/view/MediaStoryViewBinder;-><init>(Ljavax/inject/Provider;)V

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->register(Ljava/lang/String;Lcom/oculus/horizon/feedbuilder/FeedViewBinder;Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    const-string v1, "text_story"

    new-instance v2, Lcom/oculus/horizon/legacy/feed/view/TextStoryViewBinder;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-direct {v2, v3}, Lcom/oculus/horizon/legacy/feed/view/TextStoryViewBinder;-><init>(Ljavax/inject/Provider;)V

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->register(Ljava/lang/String;Lcom/oculus/horizon/feedbuilder/FeedViewBinder;Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    const-string v1, "media_and_text_story"

    new-instance v2, Lcom/oculus/horizon/legacy/feed/view/MediaAndTextStoryViewBinder;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-direct {v2, v3}, Lcom/oculus/horizon/legacy/feed/view/MediaAndTextStoryViewBinder;-><init>(Ljavax/inject/Provider;)V

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->register(Ljava/lang/String;Lcom/oculus/horizon/feedbuilder/FeedViewBinder;Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    const-string v1, "video_and_text_story"

    new-instance v2, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mShowVideoPreviews:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mFeedVideoLoggerProvider:Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;

    iget-object v5, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/horizon/legacy/feed/view/VideoAndTextStoryViewBinder;-><init>(Ljavax/inject/Provider;Lcom/oculus/horizon/feed/FeedVideoLoggerProvider;Ljavax/inject/Provider;)V

    iget-object v3, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->register(Ljava/lang/String;Lcom/oculus/horizon/feedbuilder/FeedViewBinder;Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;)V

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/feed/FeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    sget-object v0, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->LOADING:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    .line 102
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/feed/FeedFragment;->fetchFeed()V

    .line 103
    return-void
.end method

.method protected shouldShowChromecast()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
