.class public Lcom/facebook/react/uimanager/RootViewUtil;
.super Ljava/lang/Object;
.source "RootViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;
    .locals 2

    .prologue
    move-object v0, p0

    .line 19
    :goto_0
    instance-of v1, v0, Lcom/facebook/react/uimanager/RootView;

    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Lcom/facebook/react/uimanager/RootView;

    .line 24
    :goto_1
    return-object v0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    const/4 v0, 0x0

    goto :goto_1

    .line 26
    :cond_1
    instance-of v1, v0, Landroid/view/View;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 27
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method
