.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;
.source "SocialSendInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->configure(Ljava/lang/String;)V
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

    .line 278
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 292
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 293
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->social_invite_dialog_activity_fetch_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIWarningToastUtil;->showWarningToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    return-void
.end method

.method public onSuccess(Lcom/oculus/panelapp/anytimeui/SocialActivityData;)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1302(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->deeplink:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1402(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->subtitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/SocialActivityData;->imageUri:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->loading_spinner:I

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
