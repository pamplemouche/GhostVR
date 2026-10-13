.class public Lcom/oculus/horizon/events/IndividualEventsFragment;
.super Lcom/oculus/horizon/events/EventsListFragment;
.source "IndividualEventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/events/EventsListFragment",
        "<",
        "Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNoEventsView:Landroid/view/View;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/IndividualEventsFragment;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/events/IndividualEventsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/IndividualEventsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/events/IndividualEventsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/IndividualEventsFragment;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/events/api/EventsMethods;->$ul_$xXXcom_oculus_horizon_events_api_EventsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/events/api/EventsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/IndividualEventsFragment;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/horizon/events/IndividualEventsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/events/IndividualEventsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oculus/horizon/events/EventsListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/events/IndividualEventsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/events/IndividualEventsFragment;->mNoEventsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/oculus/horizon/events/IndividualEventsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fetchIndividualEvents()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/events/IndividualEventsFragment;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    .line 72
    invoke-virtual {p0}, Lcom/oculus/horizon/events/IndividualEventsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/events/IndividualEventsFragment$1;

    invoke-direct {v2, p0, p0}, Lcom/oculus/horizon/events/IndividualEventsFragment$1;-><init>(Lcom/oculus/horizon/events/IndividualEventsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/events/api/EventsMethods;->fetchIndividualEvents([Ljava/lang/String;Lretrofit/Callback;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter()Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/oculus/horizon/events/IndividualEventsFragment;->createAdapter()Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createAdapter()Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter;

    invoke-virtual {p0}, Lcom/oculus/horizon/events/IndividualEventsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/horizon/events/IndividualEventsFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/events/adapters/IndividualEventsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->EVENTS_INDIVIDUAL_EVENTS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/oculus/horizon/events/IndividualEventsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/events/IndividualEventsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/IndividualEventsFragment;)V

    .line 32
    invoke-super {p0, p1}, Lcom/oculus/horizon/events/EventsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
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
    .line 54
    sget v0, Lcom/oculus/horizon/R$layout;->events_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/oculus/horizon/events/EventsListFragment;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/oculus/horizon/events/IndividualEventsFragment;->fetchIndividualEvents()V

    .line 68
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/events/EventsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/oculus/horizon/R$id;->no_individual_events_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/events/IndividualEventsFragment;->mNoEventsView:Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/oculus/horizon/events/IndividualEventsFragment;->setStatusLoading()V

    .line 62
    return-void
.end method

.method protected shouldShowChromecast()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
