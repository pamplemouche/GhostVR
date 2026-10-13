.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$5;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "SocialSendInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->initializeFBUpsellContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    const-string v1, "oculus_fb_link_upsell_confirm"

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "/fb-connect/"

    .line 199
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aui_party_dialog"

    .line 200
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "send_party_invite"

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "container"

    const-string v3, "system_ux_dialog"

    .line 202
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 203
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "entrypoint"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mustInteract"

    const-string v3, "true"

    .line 204
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "product"

    const-string v3, "party"

    .line 205
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.oculus.vrshell"

    const-string v4, "com.oculus.vrshell.ShellControlBroadcastReceiver"

    .line 211
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "intent_data"

    const-string v4, "systemux://social"

    .line 215
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uri"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    return-void
.end method
