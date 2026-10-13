.class public final Lcom/oculus/vrshell/panels/CompositeOnClickListener;
.super Ljava/lang/Object;
.source "CompositeOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/panels/CompositeOnClickListener;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/oculus/vrshell/panels/CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/oculus/vrshell/panels/CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/oculus/vrshell/panels/CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    .line 23
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method
