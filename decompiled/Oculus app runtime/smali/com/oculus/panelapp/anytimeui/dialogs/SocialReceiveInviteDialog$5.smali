.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchPartyInfoWithActivityCallback;
.source "SocialReceiveInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->fetchPartyData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

.field final synthetic val$partyID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;->val$partyID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchPartyInfoWithActivityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 254
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to receive party info for partyID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;->val$partyID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/oculus/panelapp/anytimeui/PartyInfo;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityDeeplink:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1102(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1202(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityAppId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1302(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Lcom/oculus/panelapp/anytimeui/PartyInfo;)V

    .line 249
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    return-void
.end method
