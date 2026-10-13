.class Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$4;
.super Lcom/oculus/horizon/common/UICallback;
.source "PartyCallSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->getCurrentNotificationPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$4;->this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error when trying to retrieve user\'s current notifications preferences."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p1, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;->viewer:Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer;->user:Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer$User;->notification_opt_out_preferences_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;

    .line 121
    iget-object v4, v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->key:Ljava/lang/String;

    sget-object v5, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE_BROADCAST:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 122
    invoke-virtual {v5}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$4;->this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-static {v4}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->access$200(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;

    move-result-object v4

    iget-object v0, v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->opt_out_value:Ljava/lang/Boolean;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 123
    :goto_1
    invoke-virtual {v4, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    iget-object v4, v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->key:Ljava/lang/String;

    sget-object v5, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 126
    invoke-virtual {v5}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$4;->this$0:Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-static {v4}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->access$300(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;

    move-result-object v4

    iget-object v0, v0, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->opt_out_value:Ljava/lang/Boolean;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 127
    :goto_2
    invoke-virtual {v4, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 128
    goto :goto_2

    .line 131
    :cond_4
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$4;->onResponse(Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;)V

    return-void
.end method
