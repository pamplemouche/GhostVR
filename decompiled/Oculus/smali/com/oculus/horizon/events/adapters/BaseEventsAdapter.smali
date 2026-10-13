.class public abstract Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseEventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$OnMyEventsPreviewChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mEventViewHolderProvider:Lcom/oculus/horizon/events/view/EventViewHolderProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleProvider:Ljavax/inject/Provider;
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

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mTrackingView:Ljava/lang/String;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oculus/horizon/events/api/EventsMethods;->$ul_$xXXcom_oculus_horizon_events_api_EventsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/events/api/EventsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    invoke-static {p0}, Lcom/oculus/horizon/events/view/EventViewHolder;->$ul_$xXXcom_oculus_horizon_events_view_EventViewHolderProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/events/view/EventViewHolderProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mEventViewHolderProvider:Lcom/oculus/horizon/events/view/EventViewHolderProvider;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mItems:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 56
    iput-object p2, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mTrackingView:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mTrackingView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method protected final getEventViewHolderProvider()Lcom/oculus/horizon/events/view/EventViewHolderProvider;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mEventViewHolderProvider:Lcom/oculus/horizon/events/view/EventViewHolderProvider;

    return-object v0
.end method

.method public getFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final logEventDeeplinkFailure(Lcom/oculus/horizon/events/api/Event;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mTrackingView:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/oculus/horizon/events/api/Event;->is_viewer_subscribed:Z

    .line 168
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 167
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventDeeplinkFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    return-void
.end method

.method public final logEventDeeplinkSuccess(Lcom/oculus/horizon/events/api/Event;)V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mTrackingView:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/oculus/horizon/events/api/Event;->is_viewer_subscribed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventDeeplinkSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 164
    return-void
.end method

.method public final navigateTo(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 98
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->onBindViewHolder(Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->onBindViewHolder(Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;I)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->onBindViewHolder(Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;ILjava/util/List;)V

    .line 77
    return-void
.end method

.method public final onBindViewHolder(Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/oculus/horizon/events/view/EventsAdapterViewHolder;->bind(Ljava/lang/Object;Ljava/util/List;)V

    .line 83
    return-void
.end method

.method protected onEventChange(Lcom/oculus/horizon/events/api/Event;)V
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 178
    instance-of v0, v1, Lcom/oculus/horizon/events/api/Event;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 181
    check-cast v0, Lcom/oculus/horizon/events/api/Event;

    iget-object v0, v0, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast v1, Lcom/oculus/horizon/events/api/Event;

    iget-object v0, v1, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/horizon/events/api/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    .line 186
    :cond_2
    return-void
.end method

.method public refreshEvents()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 89
    instance-of v1, v1, Lcom/oculus/horizon/events/api/Event;

    if-nez v1, :cond_0

    .line 87
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const-string v1, "periodic_refresh"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_1
    return-void
.end method

.method public final subscribe(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    new-instance v1, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;

    iget-object v2, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, p0, v2, p1, p0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$1;-><init>(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/events/api/EventsMethods;->subscribe(Ljava/lang/String;Lretrofit/Callback;)V

    .line 135
    return-void
.end method

.method public final unsubscribe(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mEventsMethods:Lcom/oculus/horizon/events/api/EventsMethods;

    new-instance v1, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$2;

    iget-object v2, p0, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, p0, v2, p1, p0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter$2;-><init>(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;Landroid/app/Activity;Ljava/lang/String;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/events/api/EventsMethods;->unsubscribe(Ljava/lang/String;Lretrofit/Callback;)V

    .line 160
    return-void
.end method
