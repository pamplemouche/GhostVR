.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$1;
.super Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
.source "SocialProfileDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    invoke-direct {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/SystemUXRoute;->AVATAR_EDITOR:Lcom/oculus/vrshell/SystemUXRoute;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)V

    return-void
.end method
