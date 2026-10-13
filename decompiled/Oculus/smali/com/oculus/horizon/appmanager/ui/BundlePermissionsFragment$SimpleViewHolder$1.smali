.class Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder$1;
.super Ljava/lang/Object;
.source "BundlePermissionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;-><init>(Landroid/view/View;Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder$1;->this$0:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 133
    const-string v0, "BundlePermissionsFragment"

    const-string v1, "Clicked on %s."

    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder$1;->this$0:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->access$000(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder$1;->this$0:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->access$100(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;)Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder$1;->this$0:Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;->access$000(Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$SimpleViewHolder;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/appmanager/ui/BundlePermissionsFragment$Callbacks;->onBundleInstallPermissionsModelClick(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;)V

    .line 135
    return-void
.end method
