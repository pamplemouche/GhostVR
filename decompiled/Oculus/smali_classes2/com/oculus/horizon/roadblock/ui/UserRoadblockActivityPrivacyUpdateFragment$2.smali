.class Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;
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
    .line 114
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    iget-object v0, v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->CONTINUE:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    .line 119
    invoke-static {v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    .line 120
    invoke-static {v3}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportActivityPrivacyRoadblockEvent(Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v1, "extra_fragment_arg_back_finishes"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const-string v1, "extra_is_in_roadblock"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    const-string v1, "extra_roadblock_original_privacy"

    iget-object v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    .line 127
    invoke-static {v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    .line 131
    invoke-virtual {v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    .line 130
    invoke-static {v1, v2, v0}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    const-string v1, "extra_skip_roadblocks"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockActivityPrivacyUpdateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
