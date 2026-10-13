.class Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$4;
.super Ljava/lang/Object;
.source "UserRoadblockPrivacySettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$4;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$4;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment$4;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPrivacySettingsFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->setSeenSocialNux()V

    .line 105
    return-void
.end method
