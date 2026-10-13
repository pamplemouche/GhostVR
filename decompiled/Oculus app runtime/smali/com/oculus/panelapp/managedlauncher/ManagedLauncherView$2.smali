.class Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$2;
.super Ljava/lang/Object;
.source "ManagedLauncherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->reinitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

.field final synthetic val$appLaunch:Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$2;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    iput-object p2, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$2;->val$appLaunch:Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 222
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$2;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$2;->val$appLaunch:Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;

    invoke-static {p1, v0, v1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$100(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;Lcom/oculus/panelapp/managedlauncher/Config$LauncherAction;)V

    .line 223
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$2;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method
