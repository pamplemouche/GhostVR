.class Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;
.super Ljava/lang/Object;
.source "ManagedLauncherPanelApp.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 8

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getButtons()J

    move-result-wide v2

    sget-object p1, Lcom/oculus/vrshell/panels/PanelButton;->B:Lcom/oculus/vrshell/panels/PanelButton;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/PanelButton;->getFlagValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;)J

    move-result-wide v2

    cmp-long p1, v2, v6

    if-nez p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-static {p1, v0, v1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->access$002(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;J)J

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;)J

    move-result-wide v2

    cmp-long p1, v2, v6

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-static {p1, v6, v7}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->access$002(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;J)J

    .line 53
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    .line 54
    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;)J

    move-result-wide v0

    cmp-long p1, v0, v6

    if-eqz p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-static {p1, v6, v7}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->access$002(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;J)J

    .line 56
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->unlock()V

    :cond_2
    return-void
.end method

.method public onEndFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method
