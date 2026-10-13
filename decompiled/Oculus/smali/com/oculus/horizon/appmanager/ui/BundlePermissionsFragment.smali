.class public Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "BundlePermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;,
        Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;,
        Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string v1, "extra_install_permissions_models"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 35
    new-instance v1, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;-><init>()V

    .line 36
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public getCallbacks()Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    check-cast v0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 79
    instance-of v1, v0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target Fragment or calling Activity must implment BundlePermissionsFragment.Callbacks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 43
    sget v0, Lcom/oculus/horizon/R$layout;->appmanager_bundle_permissions_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 48
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    const-string v1, "extra_install_permissions_models"

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;

    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;->getCallbacks()Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;-><init>(Ljava/util/List;Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;)V

    .line 56
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 58
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 59
    new-instance v2, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 60
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 3

    .prologue
    .line 65
    instance-of v0, p1, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target fragment must implement BundlePermissionsFragment.Callbacks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 70
    return-void
.end method
