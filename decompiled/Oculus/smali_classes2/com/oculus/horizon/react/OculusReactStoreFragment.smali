.class public Lcom/oculus/horizon/react/OculusReactStoreFragment;
.super Lcom/oculus/horizon/react/OculusReactFragment;
.source "OculusReactStoreFragment.java"

# interfaces
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/react/OculusReactStoreFragment;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/react/OculusReactStoreFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/react/OculusReactStoreFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/react/OculusReactStoreFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/react/OculusReactStoreFragment;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/react/OculusReactStoreFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/oculus/horizon/react/OculusReactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactStoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/react/OculusReactStoreFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/react/OculusReactStoreFragment;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/react/OculusReactStoreFragment;->setHasOptionsMenu(Z)V

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/oculus/horizon/R$menu;->common_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 46
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/react/OculusReactFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 47
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_search:I

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactStoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x0

    sget v2, Lcom/oculus/horizon/fragmentfactory/FragmentFactoryModule$UL_id;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/react/OculusReactStoreFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newSearchFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/react/OculusReactFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Lcom/oculus/horizon/react/OculusReactFragment;->onResume()V

    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/react/OculusReactStoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;

    .line 40
    sget-object v1, Lcom/oculus/horizon/mainnavigation/NavItem;->STORE:Lcom/oculus/horizon/mainnavigation/NavItem;

    iget-object v2, p0, Lcom/oculus/horizon/react/OculusReactStoreFragment;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/mainnavigation/NavigationUpdater;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method protected updateMenu()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
