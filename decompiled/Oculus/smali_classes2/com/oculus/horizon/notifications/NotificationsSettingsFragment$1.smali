.class Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "NotificationsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->mutateNotificationsPreference(Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

.field final synthetic val$optOut:Z

.field final synthetic val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/widget/SwitchSetting;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object p3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$type:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$optOut:Z

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v2, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v1, v2, :cond_1

    .line 183
    iget-object v1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$100(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)V

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 188
    iget-object v1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 189
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->settings_notifications_general_error:I

    invoke-static {v1, v2}, Lcom/oculus/horizon/util/errors/ErrorToaster;->toast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$000(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 177
    invoke-virtual {v1}, Lcom/oculus/horizon/notifications/api/NotificationMedium;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$type:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$1;->val$optOut:Z

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationsPreferenceChangeFromNotificationsSettings(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    return-void
.end method
