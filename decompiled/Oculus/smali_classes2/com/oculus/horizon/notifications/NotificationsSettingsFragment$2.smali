.class Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;
.super Ljava/lang/Object;
.source "NotificationsSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->newOnCheckedChangeListener(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 205
    if-nez p2, :cond_0

    .line 207
    new-instance v2, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    iget-object v3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    .line 208
    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    .line 210
    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$string;->notifications_unsubscribe_popup_title:I

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->val$name:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    .line 212
    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$string;->notifications_unsubscribe_popup_message:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->val$name:Ljava/lang/String;

    aput-object v5, v0, v1

    .line 213
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->notifications_options_unsubscribe:I

    new-instance v2, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;-><init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;Lcom/oculus/horizon/widget/SwitchSetting;Z)V

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    new-instance v2, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$1;

    invoke-direct {v2, p0, p1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$1;-><init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;Lcom/oculus/horizon/widget/SwitchSetting;)V

    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->show()V

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 237
    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    sget-object v3, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    iget-object v4, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->val$type:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    :goto_1
    invoke-static {v2, p1, v3, v4, v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$200(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 238
    goto :goto_1
.end method
