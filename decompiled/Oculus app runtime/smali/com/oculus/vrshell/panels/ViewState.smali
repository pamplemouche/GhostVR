.class public final Lcom/oculus/vrshell/panels/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/ViewState$Listener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findInParents(Landroid/view/View;)Lcom/oculus/vrshell/panels/ViewState$Listener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 88
    instance-of v0, p0, Lcom/oculus/vrshell/panels/ViewState$Listener;

    if-eqz v0, :cond_0

    .line 89
    check-cast p0, Lcom/oculus/vrshell/panels/ViewState$Listener;

    return-object p0

    .line 92
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleOnClick(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;)V
    .locals 0

    .line 67
    invoke-interface {p1, p0}, Lcom/oculus/vrshell/panels/ViewState$Listener;->onViewClick(Landroid/view/View;)V

    return-void
.end method

.method public static handleOnHover(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/MotionEvent;)V
    .locals 2

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 74
    invoke-interface {p1, p0}, Lcom/oculus/vrshell/panels/ViewState$Listener;->onViewEnter(Landroid/view/View;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 76
    invoke-interface {p1, p0}, Lcom/oculus/vrshell/panels/ViewState$Listener;->onViewExit(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setViewStateListeners(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;Landroid/view/View$OnHoverListener;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/oculus/vrshell/panels/ViewState$1;

    invoke-direct {v0, p1, p2}, Lcom/oculus/vrshell/panels/ViewState$1;-><init>(Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance p2, Lcom/oculus/vrshell/panels/ViewState$2;

    invoke-direct {p2, p1, p3}, Lcom/oculus/vrshell/panels/ViewState$2;-><init>(Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnHoverListener;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static setupViewStateListeners(Landroid/view/View;)V
    .locals 2

    .line 24
    invoke-static {p0}, Lcom/oculus/vrshell/panels/ViewState;->findInParents(Landroid/view/View;)Lcom/oculus/vrshell/panels/ViewState$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 27
    invoke-static {p0, v0, v1, v1}, Lcom/oculus/vrshell/panels/ViewState;->setViewStateListeners(Landroid/view/View;Lcom/oculus/vrshell/panels/ViewState$Listener;Landroid/view/View$OnClickListener;Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method
