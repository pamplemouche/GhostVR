.class Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$2;
.super Ljava/lang/Object;
.source "PartyCallSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$2;->this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v3, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$2;->this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    sget-object v4, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->access$000(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;Lcom/oculus/horizon/notifications/api/NotificationOptOutType;Z)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$2;->this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->access$100(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->setHasOptedOutFriendOnlineNotifs(Z)V

    .line 89
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v1, v2

    .line 88
    goto :goto_1
.end method
