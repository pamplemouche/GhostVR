.class public Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "AppPermissionsFragment.java"


# instance fields
.field mAdapter:Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;->$ul_$xXXcom_oculus_horizon_appmanager_ui_AndroidPermissionModelAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->mAdapter:Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v1, "permissions"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    new-instance v1, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;-><init>()V

    .line 29
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;)V

    .line 39
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

    .prologue
    .line 44
    sget v0, Lcom/oculus/horizon/R$layout;->appmanager_app_permissions_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string v1, "permissions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->app_permissions_list:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 54
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->mAdapter:Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;->setData(Ljava/util/List;)V

    .line 55
    iget-object v1, p0, Lcom/oculus/horizon/appmanager/ui/AppPermissionsFragment;->mAdapter:Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 56
    return-void
.end method
