.class Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;
.super Ljava/util/TimerTask;
.source "ManagedLauncherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->onForeground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {v0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$1000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7$1;-><init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
