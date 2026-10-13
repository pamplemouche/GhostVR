.class Lcom/oculus/panelapp/debug/UserTab$2;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab;->initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/UserTab;

.field final synthetic val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$2;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/UserTab$2;->val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendTwoFacCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$2;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/UserTab;->access$200(Lcom/oculus/panelapp/debug/UserTab;)Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/debug/UserTab$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/panelapp/debug/UserTab$2$1;-><init>(Lcom/oculus/panelapp/debug/UserTab$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/authapi/OVRAuth;->sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    return-void
.end method
