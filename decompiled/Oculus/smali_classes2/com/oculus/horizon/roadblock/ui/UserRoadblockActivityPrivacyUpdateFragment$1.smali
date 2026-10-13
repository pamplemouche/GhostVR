.class Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$1;
.super Ljava/lang/Object;
.source "UserRoadblockActivityPrivacyUpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    iget-object v0, v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->LEARN_MORE:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    .line 83
    invoke-static {v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    .line 84
    invoke-static {v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportActivityPrivacyRoadblockEvent(Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->access$200(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 86
    return-void
.end method
