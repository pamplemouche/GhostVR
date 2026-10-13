.class Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$1;
.super Ljava/lang/Object;
.source "UserRoadblockForceUpgradeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V

    .line 91
    :cond_0
    return-void
.end method
