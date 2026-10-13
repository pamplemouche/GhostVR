.class Lcom/oculus/horizon/store/StoreApplicationViewHolder$5;
.super Ljava/lang/Object;
.source "StoreApplicationViewHolder.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreApplicationViewHolder;->maybeShowControllerWarningAndStartPurchaseAndInstallationProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$5;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$5;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$500(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/oculus/horizon/store/InstallApi;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$5;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    .line 299
    invoke-static {v1}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$300(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/oculus/horizon/store/StoreApplicationModel;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/store/InstallModel;->from(Lcom/oculus/horizon/store/StoreApplicationModel;)Lcom/oculus/horizon/store/InstallModel;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$5;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$400(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v2

    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/store/InstallApi;->startActivityForInstallAction(Lcom/oculus/horizon/store/InstallModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 300
    const/4 v0, 0x0

    return v0
.end method
