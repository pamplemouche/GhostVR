.class public final Lcom/oculus/vrshell/panels/CompositeOnHoverListener;
.super Ljava/lang/Object;
.source "CompositeOnHoverListener.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnHoverListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/CompositeOnHoverListener;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/view/View$OnHoverListener;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/oculus/vrshell/panels/CompositeOnHoverListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/oculus/vrshell/panels/CompositeOnHoverListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnHoverListener;

    if-nez v2, :cond_1

    .line 21
    invoke-interface {v3, p1, p2}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
