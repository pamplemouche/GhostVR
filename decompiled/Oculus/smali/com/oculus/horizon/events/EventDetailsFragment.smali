.class public Lcom/oculus/horizon/events/EventDetailsFragment;
.super Lcom/oculus/horizon/events/EventsListFragment;
.source "EventDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/events/EventsListFragment",
        "<",
        "Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;",
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

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/EventDetailsFragment;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/events/EventDetailsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/EventDetailsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/events/EventDetailsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/EventDetailsFragment;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/events/api/EventsMethods;->$ul_$xXXcom_oculus_horizon_events_api_EventsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/events/api/EventsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/EventDetailsFragment;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/EventDetailsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/oculus/horizon/events/EventDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/events/EventDetailsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/events/EventsListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/oculus/horizon/events/EventDetailsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fetchEventDetails()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/oculus/horizon/events/EventDetailsFragment;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    new-instance v2, Lcom/oculus/horizon/events/EventDetailsFragment$1;

    invoke-direct {v2, p0, p0}, Lcom/oculus/horizon/events/EventDetailsFragment$1;-><init>(Lcom/oculus/horizon/events/EventDetailsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/events/api/EventsMethods;->fetchEventDetails(Ljava/lang/String;Lretrofit/Callback;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter()Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->createAdapter()Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createAdapter()Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;

    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/events/adapters/EventDetailsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->EVENTS_EVENT_DETAILS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/EventDetailsFragment;)V

    .line 39
    invoke-super {p0, p1}, Lcom/oculus/horizon/events/EventsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
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
    .line 62
    sget v0, Lcom/oculus/horizon/R$layout;->events_event_details_fragment:I

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
    invoke-direct {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->fetchEventDetails()V

    .line 77
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/events/EventsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->setStatusLoading()V

    .line 70
    return-void
.end method

.method protected reportView()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/events/EventDetailsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 50
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "event_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventViewWithEventId(Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V

    .line 51
    return-void
.end method
