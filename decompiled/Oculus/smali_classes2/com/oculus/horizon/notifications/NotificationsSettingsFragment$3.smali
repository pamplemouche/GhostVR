.class Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;
.super Lcom/oculus/horizon/common/UICallback;
.source "NotificationsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getCurrentNotificationsPreferences()V
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
.field final synthetic this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    iput-object p3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->val$inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 288
    invoke-static {}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error when trying to retrieve user\'s current notifications preferences."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->setStatusLoadFailure()V

    .line 290
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->setStatusLoadSuccess()V

    .line 252
    iget-object v0, p1, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;->viewer:Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer;->user:Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer$User;->notification_opt_out_preferences_list:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$400(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "response.viewer.user.notification_opt_out_preferences_list was unexpectedly null"

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    .line 260
    invoke-static {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$500(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->notification_category_settings_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 262
    iget-object v1, p1, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;->viewer:Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer;->user:Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer$User;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse$Viewer$User;->notification_opt_out_preferences_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;

    .line 264
    iget-object v2, v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->key:Ljava/lang/String;

    sget-object v3, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE_BROADCAST:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 265
    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->key:Ljava/lang/String;

    sget-object v3, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->FRIEND_ONLINE:Lcom/oculus/horizon/notifications/api/NotificationOptOutType;

    .line 267
    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->val$inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/oculus/horizon/R$layout;->notification_preference_switch_setting:I

    .line 274
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/widget/SwitchSetting;

    .line 276
    iget-object v3, v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setTitle(Ljava/lang/String;)V

    .line 277
    iget-object v3, v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setSubtitle(Ljava/lang/String;)V

    .line 278
    iget-object v3, v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->opt_out_value:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 279
    iget-object v3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    iget-object v6, v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/api/NotificationOptOutPreferenceResponse;->name:Ljava/lang/String;

    .line 280
    invoke-static {v3, v6, v1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$600(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    move-result-object v1

    .line 279
    invoke-virtual {v2, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 282
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 278
    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 247
    check-cast p1, Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$3;->onResponse(Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;)V

    return-void
.end method
