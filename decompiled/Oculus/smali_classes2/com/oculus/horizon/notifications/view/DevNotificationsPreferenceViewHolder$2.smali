.class Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;
.super Ljava/lang/Object;
.source "DevNotificationsPreferenceViewHolder.java"

# interfaces
.implements Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->newDevOnCheckChangedListener()Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 67
    if-nez p2, :cond_0

    .line 69
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    .line 70
    invoke-virtual {p1}, Lcom/oculus/horizon/widget/SwitchSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->notifications_developer_unsubscribe_popup_title:I

    .line 71
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->notifications_developer_unsubscribe_popup_message:I

    .line 72
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->notifications_options_unsubscribe:I

    new-instance v2, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$2;-><init>(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;Lcom/oculus/horizon/widget/SwitchSetting;Z)V

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    new-instance v2, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2$1;-><init>(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;Lcom/oculus/horizon/widget/SwitchSetting;Z)V

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->show()V

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 104
    iget-object v3, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    sget-object v4, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    iget-object v0, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->mPreference:Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;

    iget-object v5, v0, Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;->app_group_id:Ljava/lang/String;

    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, p1, v4, v5, v0}, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->access$100(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->access$200(Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v3, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 107
    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/api/NotificationMedium;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder$2;->this$0:Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;

    iget-object v4, v4, Lcom/oculus/horizon/notifications/view/DevNotificationsPreferenceViewHolder;->mPreference:Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;

    iget-object v4, v4, Lcom/oculus/horizon/notifications/api/DevNotificationOptOutPreferenceResponse;->app_group_id:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 106
    :goto_2
    invoke-virtual {v0, v3, v4, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportDevNotificationsPreferenceChangeFromNotificationsSettings(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 104
    goto :goto_1

    :cond_2
    move v1, v2

    .line 107
    goto :goto_2
.end method
