.class public Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "SavedCategoryDiveFragment.java"

# interfaces
.implements Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter$View;


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mItemsAdapter:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

.field private mItemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mPopupMenuDismissHelper:Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

.field private mSavedCategoryDivePresenterProvider:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSavedDiveItemsAdapterProvider:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;->$ul_$xXXcom_oculus_horizon_libraryui_SavedCategoryDivePresenterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenterProvider:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;->$ul_$xXXcom_oculus_horizon_libraryui_SavedDiveItemsAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedDiveItemsAdapterProvider:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapterProvider;

    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_res_Resources$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mResources:Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;->$ul_$xXXcom_oculus_horizon_libraryui_PopupMenuDismissHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mPopupMenuDismissHelper:Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/oculus/horizon/libraryui/SavedCategory;Ljava/util/ArrayList;)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/libraryui/SavedCategory;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/homefeed/api/HomeFeedItem;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v1, "SAVED_CATEGORY"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    const-string v1, "SAVED_CATEGORY_ITEMS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    new-instance v1, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;-><init>()V

    .line 53
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LIBRARY_SAVED_DIVE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;)V

    .line 66
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SAVED_CATEGORY_ITEMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 69
    check-cast v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenterProvider:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenterProvider;

    .line 73
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "SAVED_CATEGORY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/SavedCategory;

    .line 72
    invoke-virtual {v2, v0, v1}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenterProvider;->get(Lcom/oculus/horizon/libraryui/SavedCategory;Ljava/util/ArrayList;)Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;->setView(Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter$View;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedDiveItemsAdapterProvider:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapterProvider;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapterProvider;->get(Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;)Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mItemsAdapter:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 87
    sget v0, Lcom/oculus/horizon/R$layout;->saved_category_dive_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;->setView(Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter$View;)V

    .line 99
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroy()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mPopupMenuDismissHelper:Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;->dismissPopupMenu()V

    .line 93
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    invoke-virtual {v1}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;->getSavedCategory()Lcom/oculus/horizon/libraryui/SavedCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/libraryui/SavedCategory;->getNameStringResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 82
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mItemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mItemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mItemsAdapter:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;->getSavedCategory()Lcom/oculus/horizon/libraryui/SavedCategory;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/libraryui/SavedCategory;->VIDEOS:Lcom/oculus/horizon/libraryui/SavedCategory;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    .line 108
    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;->getSavedCategory()Lcom/oculus/horizon/libraryui/SavedCategory;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/libraryui/SavedCategory;->PHOTOS:Lcom/oculus/horizon/libraryui/SavedCategory;

    if-ne v0, v1, :cond_2

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mItemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mSavedCategoryDivePresenter:Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;->getSavedCategory()Lcom/oculus/horizon/libraryui/SavedCategory;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/libraryui/SavedCategory;->APPS:Lcom/oculus/horizon/libraryui/SavedCategory;

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mItemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oculus/horizon/R$dimen;->three_column_library_horizontal_padding:I

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/oculus/horizon/R$dimen;->three_column_library_vertical_padding:I

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mItemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mItemsAdapter:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;->notifyItemRemoved(I)V

    .line 128
    return-void
.end method

.method public showRemoveItemError()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedCategoryDiveFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/oculus/horizon/R$string;->library_saved_remove_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/errors/ErrorToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void
.end method
