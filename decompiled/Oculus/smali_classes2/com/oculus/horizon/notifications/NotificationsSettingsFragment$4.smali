.class Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;
.super Lcom/oculus/horizon/common/UICallback;
.source "NotificationsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->getCurrentDevNotificationsPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Lcom/oculus/horizon/base/OculusBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error when trying to retrieve user\'s current notifications preferences."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p1, Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse;->viewer:Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse$Viewer;->user:Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse$Viewer$User;->dev_notif_opt_out_preferences_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$400(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "response.viewer.user.dev_notif_opt_out_preferences_list was unexpectedly null"

    .line 300
    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    .line 306
    invoke-static {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$500(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->dev_notifications_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    .line 309
    invoke-static {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$500(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->dev_notifications_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 310
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$700(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse;->viewer:Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse$Viewer;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse$Viewer;->user:Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse$Viewer$User;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse$Viewer$User;->dev_notif_opt_out_preferences_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;->setPreferences(Ljava/util/List;)V

    .line 314
    iget-object v0, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;->this$0:Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;->access$700(Lcom/oculus/horizon/notifications/NotificationsSettingsFragment;)Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/notifications/adapters/DevNotificationsPreferencesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 296
    check-cast p1, Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/notifications/NotificationsSettingsFragment$4;->onResponse(Lcom/oculus/horizon/notifications/api/DevNotificationsSettingsResponse;)V

    return-void
.end method
