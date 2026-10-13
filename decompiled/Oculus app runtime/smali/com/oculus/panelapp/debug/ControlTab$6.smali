.class Lcom/oculus/panelapp/debug/ControlTab$6;
.super Ljava/lang/Object;
.source "ControlTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/ControlTab;->initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/ControlTab;

.field final synthetic val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$6;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/ControlTab$6;->val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$6;->val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const-string v0, "shellDebug introDialogs"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method
