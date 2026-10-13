.class Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7$1;
.super Ljava/lang/Object;
.source "ManagedLauncherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7$1;->this$1:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7$1;->this$1:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;

    iget-object v0, v0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$7;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {v0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$900(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    return-void
.end method
