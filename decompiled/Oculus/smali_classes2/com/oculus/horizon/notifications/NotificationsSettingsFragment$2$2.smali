.class Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;
.super Ljava/lang/Object;
.source "NotificationsSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;

.field final synthetic val$isChecked:Z

.field final synthetic val$setting:Lcom/oculus/horizon/widget/SwitchSetting;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;->this$1:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;->val$setting:Lcom/oculus/horizon/widget/SwitchSetting;

    iput-boolean p3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;->this$1:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;

    iget-object v2, v0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    iget-object v3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;->val$setting:Lcom/oculus/horizon/widget/SwitchSetting;

    sget-object v4, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;->this$1:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;

    iget-object v5, v0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;->val$type:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$2;->val$isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v5, v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$200(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Z)V

    .line 221
    return v1

    :cond_0
    move v0, v1

    .line 219
    goto :goto_0
.end method
