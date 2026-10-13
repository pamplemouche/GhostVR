.class Lcom/oculus/horizon/store/StoreApplicationViewHolder$7;
.super Ljava/lang/Object;
.source "StoreApplicationViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreApplicationViewHolder;->onProgressActionClicked()V
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
    .line 452
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$7;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$7;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$500(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/oculus/horizon/store/InstallApi;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$7;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    .line 456
    invoke-static {v1}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$300(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/oculus/horizon/store/StoreApplicationModel;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/store/InstallModel;->from(Lcom/oculus/horizon/store/StoreApplicationModel;)Lcom/oculus/horizon/store/InstallModel;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreApplicationViewHolder$7;->this$0:Lcom/oculus/horizon/store/StoreApplicationViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreApplicationViewHolder;->access$400(Lcom/oculus/horizon/store/StoreApplicationViewHolder;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v2

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/store/InstallApi;->startActivityForInstallAction(Lcom/oculus/horizon/store/InstallModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 457
    return-void
.end method
