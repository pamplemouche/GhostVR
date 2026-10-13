.class Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BundlePermissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleViewHolder"
.end annotation


# instance fields
.field private final mCallbacks:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

.field private mModel:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 128
    iput-object p2, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->mCallbacks:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    .line 129
    new-instance v0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder$1;-><init>(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->mModel:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;)Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->mCallbacks:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;)V
    .locals 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->mModel:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->mModel:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    iget-object v1, v1, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method
