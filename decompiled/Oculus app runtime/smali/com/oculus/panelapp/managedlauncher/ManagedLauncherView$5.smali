.class Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$5;
.super Ljava/lang/Object;
.source "ManagedLauncherView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->reinitializeScrollButtons()V
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

    .line 300
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$5;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 304
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$5;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$602(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Z)Z

    .line 305
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$5;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$700(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    .line 308
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 p2, 0xa

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 309
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$5;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1, v0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$602(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Z)Z

    .line 310
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$5;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$700(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    :cond_1
    return v0
.end method
