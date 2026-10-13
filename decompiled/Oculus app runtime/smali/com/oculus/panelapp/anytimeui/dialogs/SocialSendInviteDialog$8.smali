.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;
.super Ljava/lang/Object;
.source "SocialSendInviteDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

.field final synthetic val$partyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->val$partyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 337
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->val$partyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getPartyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->setPartyID(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->val$partyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getInvitedUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 341
    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v4}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    move-result-object v4

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getFriendByID(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 343
    iget-object v4, v2, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    sget-object v5, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    sget-object v5, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    if-eq v4, v5, :cond_0

    .line 345
    sget-object v1, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    iput-object v1, v2, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    const/4 v1, 0x1

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->val$partyInfo:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 352
    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v4}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    move-result-object v4

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getFriendByID(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 354
    iget-object v4, v2, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    sget-object v5, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    if-eq v4, v5, :cond_2

    .line 355
    sget-object v1, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    iput-object v1, v2, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 362
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$8;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method
