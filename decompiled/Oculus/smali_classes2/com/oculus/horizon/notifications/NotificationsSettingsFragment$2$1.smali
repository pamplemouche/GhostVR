.class Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$1;
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

.field final synthetic val$setting:Lcom/oculus/horizon/widget/SwitchSetting;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;Lcom/oculus/horizon/widget/SwitchSetting;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$1;->this$1:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2;

    iput-object p2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$1;->val$setting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$1;->val$setting:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$2$1;->val$setting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 230
    return v1

    :cond_0
    move v0, v1

    .line 229
    goto :goto_0
.end method
