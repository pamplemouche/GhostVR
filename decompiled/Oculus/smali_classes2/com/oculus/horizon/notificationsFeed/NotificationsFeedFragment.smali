.class public Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;
.super Lcom/oculus/horizon/feed/BaseFeedFragment;
.source "NotificationsFeedFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

.field private mNotificationsFeedImpressionListener:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;

.field private mNotificationsFeedImpressionListenerProvider:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListenerProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationsFeedMethods:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotificationsFeedProvider:Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeedProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mServerBasedNotificationsFeedUnseenCountTracker:Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStandardNotificationViewBinder:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedMethods;->$ul_$xXXcom_oculus_horizon_notificationsFeed_NotificationsFeedMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notificationsFeed/NotificationsFeedMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedMethods:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedMethods;

    invoke-static {p0}, Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;->$ul_$xXXcom_oculus_horizon_feed_view_StoryViewHolderFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    invoke-static {p0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;->$ul_$xXXcom_oculus_horizon_notificationsFeed_view_StandardNotificationViewBinder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mStandardNotificationViewBinder:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    invoke-static {p0}, Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;->$ul_$xXXcom_oculus_horizon_notificationsFeed_ServerBasedNotificationsFeedUnseenCountTracker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mServerBasedNotificationsFeedUnseenCountTracker:Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;

    invoke-static {p0}, Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeed;->$ul_$xXXcom_oculus_horizon_notificationsFeed_model_NotificationsFeedProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeedProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedProvider:Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeedProvider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;->$ul_$xXXcom_oculus_horizon_notificationsFeed_NotificationsFeedImpressionListenerProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListenerProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedImpressionListenerProvider:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListenerProvider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    invoke-direct {v0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->fetchNotificationsFeed()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->clearBadges()V

    return-void
.end method

.method static synthetic access$1002(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mScrollToId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mServerBasedNotificationsFeedUnseenCountTracker:Lcom/oculus/horizon/notificationsFeed/ServerBasedNotificationsFeedUnseenCountTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeedProvider;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedProvider:Lcom/oculus/horizon/notificationsFeed/model/NotificationsFeedProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mScrollToId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Lcom/oculus/horizon/feedbuilder/FeedAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mScrollToId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private clearBadges()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedMethods:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedMethods;

    new-instance v1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$3;-><init>(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedMethods;->markAllFeedNotificationsSeen(Lretrofit/Callback;)V

    .line 172
    return-void
.end method

.method private fetchNotificationsFeed()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedMethods:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedMethods;

    new-instance v1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$2;-><init>(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedMethods;->getNotificationsFeed(Lretrofit/Callback;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected addItemDecorations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;ZZ)V

    .line 104
    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 105
    return-void
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->NOTIFICATIONS_FEED:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V

    .line 59
    invoke-super {p0, p1}, Lcom/oculus/horizon/feed/BaseFeedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
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

    .prologue
    .line 65
    sget v0, Lcom/oculus/horizon/R$layout;->feed_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;->onPause()V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->stopTracking(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->startTracking(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 111
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/feed/BaseFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    const-string v1, "standard"

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mStandardNotificationViewBinder:Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    iget-object v3, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mStoryViewHolderFactory:Lcom/oculus/horizon/feed/view/StoryViewHolderFactory;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->register(Ljava/lang/String;Lcom/oculus/horizon/feedbuilder/FeedViewBinder;Lcom/oculus/horizon/feedbuilder/ViewHolderFactory;)V

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedImpressionListenerProvider:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListenerProvider;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    .line 78
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListenerProvider;->get(Lcom/oculus/horizon/feedbuilder/FeedAdapter;)Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedImpressionListener:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mImpressionDetector:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    iget-object v1, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mNotificationsFeedImpressionListener:Lcom/oculus/horizon/notificationsFeed/NotificationsFeedImpressionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->registerListener(Lcom/facebook/crudolib/view/impression/ImpressionListener;)V

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment$1;-><init>(Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 90
    sget-object v0, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->LOADING:Lcom/oculus/horizon/feed/BaseFeedFragment$Status;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V

    .line 91
    invoke-direct {p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->fetchNotificationsFeed()V

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationFeedLoaded()V

    .line 93
    invoke-direct {p0}, Lcom/oculus/horizon/notificationsFeed/NotificationsFeedFragment;->clearBadges()V

    .line 94
    return-void
.end method
