.class Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;
.super Ljava/lang/Object;
.source "ManagedLauncherView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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

.field final synthetic val$appCardTextView:Landroid/widget/TextView;

.field final synthetic val$iconRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    iput-object p2, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;->val$appCardTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;->val$iconRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;->this$0:Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;

    invoke-static {p1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;->access$000(Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView;)Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;

    move-result-object p1

    sget-object v1, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherPanelApp;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    .line 205
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;->val$appCardTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;->val$iconRelativeLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/oculus/panelapp/managedlauncher/R$drawable;->managed_launcher_app_card_outline:I

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 210
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    .line 211
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;->val$appCardTextView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/oculus/panelapp/managedlauncher/ManagedLauncherView$1;->val$iconRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return v0
.end method
