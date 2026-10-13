.class Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BundlePermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicRecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;",
            ">;",
            "Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;->mData:Ljava/util/List;

    .line 98
    iput-object p2, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;->mCallbacks:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    .line 99
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;->onBindViewHolder(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;I)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    .line 111
    invoke-virtual {p1, v0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->bind(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;)V

    .line 112
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    sget v1, Lcom/oculus/horizon/R$layout;->bundle_permission_label:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;

    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$BasicRecycleAdapter;->mCallbacks:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    invoke-direct {v1, v0, v2}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;-><init>(Landroid/view/View;Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;)V

    return-object v1
.end method
