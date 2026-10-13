.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;
.super Ljava/lang/Object;
.source "SocialSendInviteDialog.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/InviteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->initializeSendInviteContent()V
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

    .line 88
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInviteClick(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
