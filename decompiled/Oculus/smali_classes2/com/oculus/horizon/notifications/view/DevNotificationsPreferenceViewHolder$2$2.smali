.class Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;
.super Ljava/lang/Object;
.source "DevNotificationsPreferenceViewHolder.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;

.field final synthetic val$isChecked:Z

.field final synthetic val$setting:Lcom/oculus/horizon/widget/SwitchSetting;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->this$1:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->val$setting:Lcom/oculus/horizon/widget/SwitchSetting;

    iput-boolean p3, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->this$1:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;

    iget-object v3, v0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    iget-object v4, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->val$setting:Lcom/oculus/horizon/widget/SwitchSetting;

    sget-object v5, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    iget-object v0, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->this$1:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->mPreference:Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;

    iget-object v6, v0, Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;->app_group_id:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->val$isChecked:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v5, v6, v0}, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->access$100(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->this$1:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->access$200(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v3, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 85
    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/api/NotificationMedium;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->this$1:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;

    iget-object v4, v4, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    iget-object v4, v4, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->mPreference:Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;

    iget-object v4, v4, Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;->app_group_id:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;->val$isChecked:Z

    if-nez v5, :cond_1

    .line 84
    :goto_1
    invoke-virtual {v0, v3, v4, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportDevNotificationsPreferenceChangeFromNotificationsSettings(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    return v2

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    :cond_1
    move v1, v2

    .line 85
    goto :goto_1
.end method
