.class Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;
.super Ljava/lang/Object;
.source "UserActivityPrivacyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

.field final synthetic val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;->val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->access$300(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)V

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;->val$oculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;->FINISH:Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;

    iget-object v2, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    .line 122
    invoke-static {v2}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->access$400(Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    .line 123
    invoke-virtual {v3}, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->getCurrentStateString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportActivityPrivacyRoadblockEvent(Lcom/oculus/horizon/logging/LoggingKeys$ActivityPrivacyRoadblockEvents;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment$4;->this$0:Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;

    iget-object v0, v0, Lcom/oculus/horizon/settings/UserActivityPrivacyFragment;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->setSeenActivityPrivacyUpdateRoadblock()V

    .line 126
    return-void
.end method
