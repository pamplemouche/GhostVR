.class public Lcom/oculus/horizon/libraryui/MyAppsFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "MyAppsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;
.implements Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;


# instance fields
.field private mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

.field mAdapterProvider:Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAppChangeListenerRegistered:Z

.field mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFilterSpinner:Landroid/widget/Spinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSortSpinner:Landroid/widget/Spinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSortWrapperArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/oculus/horizon/libraryui/LibrarySortWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/MyAppsFragment;)V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/MyAppsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/libraryui/MyAppsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/MyAppsFragment;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->$ul_$xXXcom_oculus_horizon_libraryui_SubLibraryAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapterProvider:Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->$ul_$xXXcom_oculus_horizon_libraryui_LibrarySortCacheHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 48
    sget-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

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
    .line 261
    invoke-direct {p0, p1}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getUnseenAppsAndMarkAsSeen(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->setBadgedApps(Ljava/util/Set;)V

    .line 263
    return-void
.end method

.method private getSortedApps()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Lcom/oculus/horizon/libraryui/MyAppsFragment$1;->$SwitchMap$com$oculus$horizon$libraryui$LibraryStatusWrapper$LibraryStatus:[I

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-virtual {v1}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedInstalled()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedUpdate()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedAll()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedNotInstalled()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSorts()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/libraryui/LibrarySortWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v1, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;

    sget-object v2, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->RECENT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->RECENT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 115
    invoke-virtual {v4}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->getDisplayTitleResourceId()I

    move-result v4

    .line 114
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;-><init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;

    sget-object v2, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->NAME:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->NAME:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 119
    invoke-virtual {v4}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->getDisplayTitleResourceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;-><init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;

    sget-object v2, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->COMFORT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->COMFORT:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 124
    invoke-virtual {v4}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->getDisplayTitleResourceId()I

    move-result v4

    .line 123
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;-><init>(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v0
.end method

.method private getTypes()Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;

    sget-object v1, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->ALL:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/oculus/horizon/R$string;->common_all_apps:I

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;-><init>(Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;Ljava/lang/String;)V

    new-instance v1, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;

    sget-object v2, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/oculus/horizon/R$string;->common_installed:I

    .line 134
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;-><init>(Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;

    sget-object v3, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->NOT_INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iget-object v4, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/oculus/horizon/R$string;->common_not_installed:I

    .line 137
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;-><init>(Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;Ljava/lang/String;)V

    new-instance v3, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;

    sget-object v4, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->UPDATES:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iget-object v5, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/oculus/horizon/R$string;->common_updates:I

    .line 140
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;-><init>(Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;Ljava/lang/String;)V

    .line 129
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
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
    .line 266
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 267
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

    .line 268
    iget-boolean v3, v0, Lcom/oculus/library/model/App;->isUnseen:Z

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 270
    iget-object v3, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v0, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/oculus/libraryapi/OVRLibraryInternal;->setUnseenBadge(Ljava/lang/String;Z)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/oculus/horizon/libraryui/MyAppsFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;-><init>()V

    .line 58
    return-object v0
.end method

.method private refetchProducts()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->fetchProducts()V

    .line 204
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getSortedApps()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->setLibraryApps(Ljava/util/List;)V

    .line 205
    return-void
.end method

.method private registerAppChangeListener()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAppChangeListenerRegistered:Z

    .line 193
    return-void
.end method

.method private setStatus(Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;)Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-virtual {v1}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportLibrarySubsectionView(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unregisterAppChangeListener()V
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAppChangeListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAppChangeListenerRegistered:Z

    .line 200
    :cond_0
    return-void
.end method

.method private updateSortMenu()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortWrapperArrayAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortWrapperArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortWrapperArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getSorts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private updateViews()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    sget-object v1, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->UPDATES:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->setIsUpdateTab(Z)V

    .line 278
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getSortedApps()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->setLibraryApps(Ljava/util/List;)V

    .line 279
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LIBRARY_MY_APPS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->refetchProducts()V

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/MyAppsFragment;)V

    .line 67
    sget-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->setStatus(Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;)Z

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapterProvider:Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;

    sget-object v1, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->UPDATES:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapterProvider;->get(Z)Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 75
    sget v0, Lcom/oculus/horizon/R$layout;->my_apps_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->unregisterAppChangeListener()V

    .line 167
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mFilterSpinner:Landroid/widget/Spinner;

    .line 169
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortSpinner:Landroid/widget/Spinner;

    .line 170
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortWrapperArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->setBadgedApps(Ljava/util/Set;)V

    .line 172
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 173
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mFilterSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mFilterSpinner:Landroid/widget/Spinner;

    .line 215
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper;->getStatus()Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->setStatus(Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->updateViews()V

    .line 217
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->updateSortMenu()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortSpinner:Landroid/widget/Spinner;

    .line 222
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortWrapper;->getSort()Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getCurrentSortOrder()Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->setCurrentSortOrder(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;)V

    .line 227
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->updateViews()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 235
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 153
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;

    .line 156
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->LIBRARY:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->library_title:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 158
    sget-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->INSTALLED:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->ALL:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mStatus:Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;

    .line 159
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/LibraryStatusWrapper$LibraryStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortedInstalled()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->addUnseenBadgesAndResetUnseenStatus(Lcom/google/common/collect/ImmutableList;)V

    .line 162
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x1090009

    const v4, 0x1090008

    .line 80
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mAdapter:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    sget v0, Lcom/oculus/horizon/R$id;->spinner_filter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mFilterSpinner:Landroid/widget/Spinner;

    .line 87
    sget v0, Lcom/oculus/horizon/R$id;->spinner_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortSpinner:Landroid/widget/Spinner;

    .line 89
    sget v0, Lcom/oculus/horizon/R$id;->spinner_filter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mFilterSpinner:Landroid/widget/Spinner;

    .line 90
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 91
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 92
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->spinner_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortSpinner:Landroid/widget/Spinner;

    .line 97
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 98
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->getSorts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortWrapperArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortWrapperArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortWrapperArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mSortSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/MyAppsFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->initialize()V

    .line 104
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->updateViews()V

    .line 105
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->refetchProducts()V

    .line 106
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->registerAppChangeListener()V

    .line 107
    return-void
.end method

.method protected onViewVisibleInViewPager()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/MyAppsFragment;->reportView()V

    .line 183
    return-void
.end method

.method protected shouldReportViewInOnResume()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method
