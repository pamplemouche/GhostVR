.class Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;
.super Ljava/lang/Object;
.source "HomeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bug Report pressed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$300()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$300()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$300()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    .line 114
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_BUGREPORTER_V2_ENABLED:Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/os/BugReporter2;->createBugReport(Landroid/content/Context;)Lcom/oculus/os/BugReporter2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 117
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to create bug report"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {v0, p1}, Lcom/oculus/os/BugReporter2;->storeScreenshot(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    .line 133
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HOME_DIALOG_BUTTON"

    .line 129
    invoke-virtual {v0, v2, v1}, Lcom/oculus/os/BugReporter2;->getLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 136
    :cond_2
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3$1;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    .line 137
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 143
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 145
    invoke-static {}, Lcom/oculus/os/BugReporter;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    .line 144
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_1
    return-void
.end method
