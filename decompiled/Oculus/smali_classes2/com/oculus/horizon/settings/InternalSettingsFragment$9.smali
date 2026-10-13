.class Lcom/oculus/horizon/settings/InternalSettingsFragment$9;
.super Ljava/lang/Object;
.source "InternalSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/InternalSettingsFragment;->setupSettingsItems(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$000(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenPaymentRoadblock(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$700(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;->resetShownState()V

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$300(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    const-string v1, "Reset Payments NUX"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;->val$context:Landroid/content/Context;

    const-class v2, Lcom/oculus/horizon/obe/YouAreReadyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 291
    return-void
.end method
