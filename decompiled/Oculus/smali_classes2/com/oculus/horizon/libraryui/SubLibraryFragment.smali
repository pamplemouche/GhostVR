.class public Lcom/oculus/horizon/libraryui/SubLibraryFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "SubLibraryFragment.java"

# interfaces
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;
.implements Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAB_INSTALLED:I

.field private final TAB_NOT_INSTALLED:I

.field private final TAB_UPDATES:I

.field private mActiveSortOrder:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

.field mAdapterProvider:Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEventBusesRegistered:Z

.field mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

.field mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSortButton:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTabIndex:I


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/SubLibraryFragment;)V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/SubLibraryFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/SubLibraryFragment;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->$ul_$xXXcom_oculus_horizon_libraryui_SubLibraryAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mAdapterProvider:Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->$ul_$xXXcom_oculus_horizon_libraryui_LibrarySortCacheHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->TAB_INSTALLED:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->TAB_UPDATES:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->TAB_NOT_INSTALLED:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mActiveSortOrder:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/libraryui/SubLibraryFragment;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->updateSortInTab()V

    return-void
.end method

.method private addUnseenBadgesAndResetUnseenStatus(Lcom/google/common/collect/ImmutableList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->getUnseenAppsAndMarkAsSeen(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->setBadgedApps(Ljava/util/Set;)V

    .line 216
    return-void
.end method

.method private getUnseenAppsAndMarkAsSeen(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 221
    iget-boolean v3, v0, Lcom/oculus/library/model/App;->isUnseen:Z

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 223
    iget-object v3, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v0, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/oculus/libraryapi/OVRLibraryInternal;->setUnseenBadge(Ljava/lang/String;Z)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private loadTab()V
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mTabIndex:I

    packed-switch v0, :pswitch_data_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized library tab"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedInstalled()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->setLibraryApps(Ljava/util/List;)V

    .line 211
    return-void

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedUpdate()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedNotInstalled()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newInstance(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v1, "tab_index"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    new-instance v1, Lcom/oculus/horizon/libraryui/SubLibraryFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;-><init>()V

    .line 77
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method

.method private refetchProducts()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->fetchProducts()V

    .line 177
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->loadTab()V

    .line 178
    return-void
.end method

.method private registerEventBuses()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->register(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mEventBusesRegistered:Z

    .line 165
    return-void
.end method

.method private unregisterEventBuses()V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mEventBusesRegistered:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->unregister(Ljava/lang/Object;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mEventBusesRegistered:Z

    .line 173
    :cond_0
    return-void
.end method

.method private updateSortInTab()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getCurrentSortOrder()Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mActiveSortOrder:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    if-ne v1, v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getCurrentSortOrder()Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mActiveSortOrder:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 235
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->updateSortButton()V

    .line 236
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->loadTab()V

    goto :goto_0
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->TAG:Ljava/lang/String;

    const-string v1, "getTrackingView was called when it shouldn\'t be due to overridden reportView"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->refetchProducts()V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/SubLibraryFragment;)V

    .line 87
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    const-string v3, "tab_index"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mTabIndex:I

    .line 89
    iget v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mTabIndex:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Failed to fetch the tab index."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mAdapterProvider:Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;

    iget v3, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mTabIndex:I

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;->get(Z)Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    .line 93
    invoke-static {}, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->getInstance()Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibraryEventBus:Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 100
    sget v0, Lcom/oculus/horizon/R$layout;->sub_three_column_library_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->unregisterEventBuses()V

    .line 138
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mSortButton:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->setBadgedApps(Ljava/util/Set;)V

    .line 141
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;

    .line 128
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->LIBRARY:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->library_title:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 130
    iget v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mTabIndex:I

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedInstalled()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->addUnseenBadgesAndResetUnseenStatus(Lcom/google/common/collect/ImmutableList;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onTabChangedEvent(Lcom/oculus/horizon/libraryui/events/TabChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 187
    iget v0, p1, Lcom/oculus/horizon/libraryui/events/TabChangedEvent;->tabId:I

    iget v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mTabIndex:I

    if-ne v0, v1, :cond_1

    .line 188
    iget v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mTabIndex:I

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedInstalled()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->addUnseenBadgesAndResetUnseenStatus(Lcom/google/common/collect/ImmutableList;)V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->updateSortInTab()V

    .line 193
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    sget v0, Lcom/oculus/horizon/R$id;->library_sort_selector_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 115
    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->library_sort_selector_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mSortButton:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->setUpSortMenu(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->initialize()V

    .line 118
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->updateSortInTab()V

    .line 119
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->refetchProducts()V

    .line 120
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->registerEventBuses()V

    .line 121
    return-void
.end method

.method protected reportView()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mTabIndex:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportLibraryTabView(I)V

    .line 154
    return-void
.end method

.method protected reportViewEnd()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LIBRARY_TAB:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 159
    return-void
.end method

.method public setUpSortMenu(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 246
    sget v0, Lcom/oculus/horizon/R$id;->library_sort_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 247
    sget v1, Lcom/oculus/horizon/R$id;->library_sort_selector_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 249
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->updateSortButton()V

    .line 250
    new-instance v2, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;-><init>(Lcom/oculus/horizon/libraryui/SubLibraryFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-void
.end method

.method public updateSortButton()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mSortButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mSortButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getCurrentSortOrder()Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->getDisplayTitleResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    :cond_0
    return-void
.end method
