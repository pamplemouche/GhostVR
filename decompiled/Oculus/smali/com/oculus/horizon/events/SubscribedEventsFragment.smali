.class public Lcom/oculus/horizon/events/SubscribedEventsFragment;
.super Lcom/oculus/horizon/events/EventsListFragment;
.source "SubscribedEventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/events/EventsListFragment",
        "<",
        "Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNoEventsView:Landroid/view/View;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/SubscribedEventsFragment;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/SubscribedEventsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/SubscribedEventsFragment;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/events/api/EventsMethods;->$ul_$xXXcom_oculus_horizon_events_api_EventsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/events/api/EventsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/SubscribedEventsFragment;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/events/SubscribedEventsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/events/EventsListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/events/SubscribedEventsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment;->mNoEventsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oculus/horizon/events/SubscribedEventsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fetchSubscribedEvents()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    new-instance v1, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment$2;-><init>(Lcom/oculus/horizon/events/SubscribedEventsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/events/api/EventsMethods;->fetchSubscribedEvents(Lretrofit/Callback;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter()Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->createAdapter()Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createAdapter()Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;

    invoke-virtual {p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/events/adapters/SubscribedEventsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->EVENTS_SUBSCRIBED:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/SubscribedEventsFragment;)V

    .line 34
    invoke-super {p0, p1}, Lcom/oculus/horizon/events/EventsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
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
    .line 51
    sget v0, Lcom/oculus/horizon/R$layout;->events_subscribed_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/oculus/horizon/events/EventsListFragment;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->fetchSubscribedEvents()V

    .line 77
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/events/EventsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/oculus/horizon/R$id;->no_subscribed_events_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment;->mNoEventsView:Landroid/view/View;

    .line 58
    sget v0, Lcom/oculus/horizon/R$id;->browse_events_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    new-instance v1, Lcom/oculus/horizon/events/SubscribedEventsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment$1;-><init>(Lcom/oculus/horizon/events/SubscribedEventsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->setStatusLoading()V

    .line 70
    return-void
.end method
