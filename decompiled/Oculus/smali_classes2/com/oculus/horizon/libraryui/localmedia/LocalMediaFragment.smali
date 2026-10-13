.class public Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "LocalMediaFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter$View;
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mLocalMediaAdapter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSortSpinner:Landroid/widget/Spinner;

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->$ul_$xXXcom_oculus_horizon_libraryui_localmedia_LocalMediaAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaAdapter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->$ul_$xXXcom_oculus_horizon_libraryui_localmedia_LocalMediaPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaAdapter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    return-object v0
.end method

.method private getSorts()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;

    sget-object v1, Lcom/oculus/localmedia/MediaSort;->DATE:Lcom/oculus/localmedia/MediaSort;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/oculus/horizon/R$string;->library_sort_selector_recently_used_asc:I

    .line 255
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;-><init>(Lcom/oculus/localmedia/MediaSort;Ljava/lang/String;)V

    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;

    sget-object v2, Lcom/oculus/localmedia/MediaSort;->NAME:Lcom/oculus/localmedia/MediaSort;

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/oculus/horizon/R$string;->store_sort_selector_alpha_asc:I

    .line 257
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;-><init>(Lcom/oculus/localmedia/MediaSort;Ljava/lang/String;)V

    .line 253
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private getTypes()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;

    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    sget-object v2, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    .line 242
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/oculus/horizon/R$string;->library_local_media_type_all:I

    .line 243
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)V

    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;

    sget-object v2, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    .line 245
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/oculus/horizon/R$string;->library_local_media_type_video:I

    .line 246
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;

    sget-object v3, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    .line 248
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/oculus/horizon/R$string;->library_local_media_type_pano:I

    .line 249
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/lang/String;)V

    .line 240
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/localmedia/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaAdapter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->addMediaItems(Ljava/util/List;)V

    .line 175
    return-void
.end method

.method public clearMediaItems()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaAdapter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->clearMediaItems()V

    .line 180
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x3

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaAdapter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getLastVisibleItemPosition()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 164
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LIBRARY_LOCAL_MEDIA:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 75
    sget v0, Lcom/oculus/horizon/R$layout;->library_local_media_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 156
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mFilterSpinner:Landroid/widget/Spinner;

    .line 157
    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSortSpinner:Landroid/widget/Spinner;

    .line 159
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 160
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mFilterSpinner:Landroid/widget/Spinner;

    .line 215
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;->getMediaTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSortSpinner:Landroid/widget/Spinner;

    .line 216
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;->getSortType()Lcom/oculus/localmedia/MediaSort;

    move-result-object v0

    .line 214
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->setTypeAndSort(Ljava/util/List;Lcom/oculus/localmedia/MediaSort;)V

    .line 217
    return-void
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
    .line 222
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->onPause()V

    .line 142
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 143
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->onRefresh()V

    .line 170
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 206
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    aget v2, p3, v0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->onStoragePermissionResult(Z)V

    .line 210
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->onResume()V

    .line 136
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v4, 0x1090009

    const v3, 0x1090008

    .line 80
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    sget v0, Lcom/oculus/horizon/R$id;->spinner_filter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mFilterSpinner:Landroid/widget/Spinner;

    .line 83
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 84
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->getTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    sget v0, Lcom/oculus/horizon/R$id;->spinner_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSortSpinner:Landroid/widget/Spinner;

    .line 90
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 91
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->getSorts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 92
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSortSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSortSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$1;-><init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 110
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaAdapter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$2;-><init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 122
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mFilterSpinner:Landroid/widget/Spinner;

    .line 124
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaTypeWrapper;->getMediaTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSortSpinner:Landroid/widget/Spinner;

    .line 125
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaSortWrapper;->getSortType()Lcom/oculus/localmedia/MediaSort;

    move-result-object v0

    .line 122
    invoke-virtual {v1, p0, v2, v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->setView(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter$View;Ljava/util/List;Lcom/oculus/localmedia/MediaSort;)V

    .line 127
    sget v0, Lcom/oculus/horizon/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 129
    return-void
.end method

.method protected onViewVisibleInViewPager()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewVisibleInViewPager()V

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaPresenter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->onViewVisibleInViewPager()V

    .line 150
    return-void
.end method

.method public requestStoragePermission()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    .line 195
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 196
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setPermission(Ljava/lang/String;)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_title:I

    .line 197
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setTitle(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->library_local_media_storage_permission_request_message:I

    .line 198
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setMessage(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->build()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setLoadingIndicator(Z)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mLocalMediaAdapter:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->setLoadingIndicator(Z)V

    .line 190
    return-void
.end method

.method public stopSwipeRefreshLayoutLoading()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 185
    return-void
.end method
