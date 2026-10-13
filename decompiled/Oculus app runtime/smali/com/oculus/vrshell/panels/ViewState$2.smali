.class final Lcom/oculus/vrshell/panels/ViewState$2;
.super Ljava/lang/Object;
.source "ViewState.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ViewState;->setViewStateListeners(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;Landroid/view/View$OnHoverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onHoverListener:Landroid/view/View$OnHoverListener;

.field final synthetic val$viewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnHoverListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ViewState$2;->val$viewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ViewState$2;->val$onHoverListener:Landroid/view/View$OnHoverListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ViewState$2;->val$viewStateListener:Lcom/oculus/vrshell/panels/ViewState$Listener;

    invoke-static {p1, v0, p2}, Lcom/oculus/vrshell/panels/ViewState;->handleOnHover(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/MotionEvent;)V

    .line 56
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ViewState$2;->val$onHoverListener:Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
