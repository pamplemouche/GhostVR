.class Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "DevNotificationsPreferenceViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->mutateDevNotificationsPreference(Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V
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
.field final synthetic this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

.field final synthetic val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;Lcom/oculus/horizon/widget/SwitchSetting;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 54
    invoke-virtual {v1}, Lcom/oculus/horizon/widget/SwitchSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    .line 55
    invoke-static {v2}, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->access$000(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;)Lcom/oculus/horizon/widget/SwitchSetting;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/oculus/horizon/widget/SwitchSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->settings_notifications_general_error:I

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lcom/oculus/horizon/util/errors/ErrorToaster;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 59
    iget-object v1, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v2, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 60
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$1;->val$toggle:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 49
    return-void
.end method
