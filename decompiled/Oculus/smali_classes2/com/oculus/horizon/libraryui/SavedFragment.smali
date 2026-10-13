.class public Lcom/oculus/horizon/libraryui/SavedFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "SavedFragment.java"

# interfaces
.implements Lcom/oculus/horizon/libraryui/SavedPresenter$View;
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;


# instance fields
.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mPopupMenuDismissHelper:Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSavedCategoriesAdapter:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

.field private mSavedCategoriesAdapterProvider:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSavedCategoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSavedPresenter:Lcom/oculus/horizon/libraryui/SavedPresenter;

.field private mSavedPresenterProvider:Lcom/oculus/horizon/libraryui/SavedPresenterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/SavedFragment;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/libraryui/SavedFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/SavedFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/libraryui/SavedFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/libraryui/SavedFragment;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;->$ul_$xXXcom_oculus_horizon_libraryui_SavedCategoriesAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/SavedCategoriesAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesAdapterProvider:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/SavedPresenter;->$ul_$xXXcom_oculus_horizon_libraryui_SavedPresenterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/SavedPresenterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedPresenterProvider:Lcom/oculus/horizon/libraryui/SavedPresenterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;->$ul_$xXXcom_oculus_horizon_libraryui_PopupMenuDismissHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/libraryui/SavedFragment;->mPopupMenuDismissHelper:Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/oculus/horizon/libraryui/SavedFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/libraryui/SavedFragment;-><init>()V

    .line 40
    return-object v0
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LIBRARY_SAVED:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/libraryui/SavedFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/libraryui/SavedFragment;)V

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedPresenterProvider:Lcom/oculus/horizon/libraryui/SavedPresenterProvider;

    invoke-static {}, Lcom/oculus/horizon/libraryui/SavedCategory;->values()[Lcom/oculus/horizon/libraryui/SavedCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SavedPresenterProvider;->get([Lcom/oculus/horizon/libraryui/SavedCategory;)Lcom/oculus/horizon/libraryui/SavedPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedPresenter:Lcom/oculus/horizon/libraryui/SavedPresenter;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesAdapterProvider:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapterProvider;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedPresenter:Lcom/oculus/horizon/libraryui/SavedPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapterProvider;->get(Lcom/oculus/horizon/libraryui/SavedPresenter;)Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesAdapter:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    sget v0, Lcom/oculus/horizon/R$layout;->saved_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroy()V

    .line 99
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedPresenter:Lcom/oculus/horizon/libraryui/SavedPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/SavedPresenter;->setView(Lcom/oculus/horizon/libraryui/SavedPresenter$View;)V

    .line 91
    iput-object v1, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    iput-object v1, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 93
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 94
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mPopupMenuDismissHelper:Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;->dismissPopupMenu()V

    .line 85
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 74
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;

    .line 77
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->LIBRARY:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v2, Lcom/oculus/horizon/R$string;->library_title:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/libraryui/SavedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedPresenter:Lcom/oculus/horizon/libraryui/SavedPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/SavedPresenter;->fetchSavedHomeFeedItems()V

    .line 80
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedPresenter:Lcom/oculus/horizon/libraryui/SavedPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/libraryui/SavedPresenter;->setView(Lcom/oculus/horizon/libraryui/SavedPresenter$View;)V

    .line 65
    sget v0, Lcom/oculus/horizon/R$id;->saved_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesAdapter:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 70
    return-void
.end method

.method public removeItem(Lcom/oculus/horizon/libraryui/SavedCategory;I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesAdapter:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;->getAdapter(Lcom/oculus/horizon/libraryui/SavedCategory;)Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p2}, Lcom/oculus/horizon/libraryui/SavedItemsAdapter;->notifyItemRemoved(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public showHomeFeedItems()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesAdapter:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method public showHomeFeedItemsFetchError()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Could not fetch saved items."

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/errors/ErrorToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public showLoadingIcon()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedFragment;->mSavedCategoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 110
    return-void
.end method

.method public showRemoveItemError()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/oculus/horizon/libraryui/SavedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Could not delete item."

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/errors/ErrorToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    return-void
.end method
