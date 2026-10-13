.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;
.super Ljava/lang/Object;
.source "SocialSendInviteDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->handleQueryResult(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

.field final synthetic val$newFriends:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->val$newFriends:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->val$newFriends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->val$newFriends:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->empty_friends_list_message:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$9;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->loading_spinner:I

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
