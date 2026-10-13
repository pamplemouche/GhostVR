.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$4;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "SocialReceiveInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->configureDefaultContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Z)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V

    return-void
.end method

.method public onMiddle()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Z)V

    return-void
.end method
