.class Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;
.super Ljava/lang/Object;
.source "ManagedLauncherView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 279
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1, v0}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$402(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Z)Z

    .line 284
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$300(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    .line 287
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$500(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x406a800000000000L    # 212.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 288
    iget-object v2, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {v2}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$500(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 291
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 292
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1, v1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$402(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Z)Z

    .line 293
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$4;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$300(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)V

    :cond_1
    return v1
.end method
