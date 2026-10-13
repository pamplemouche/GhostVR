.class public LCc1;
.super Lrc1;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public y:Z

.field public z:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc1;-><init>()V

    .line 2
    iput-object p1, p0, LCc1;->z:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LCc1;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x1020002

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0, v1}, Lrc1;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, LCc1;->y:Z

    .line 4
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, LCc1;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x1020002

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, LCc1;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LCc1;->c()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p2, p1}, Lrc1;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    .line 3
    iget-boolean p2, p0, LCc1;->y:Z

    if-ne p2, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, LCc1;->y:Z

    .line 5
    iget-object p2, p0, Lrc1;->w:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lqc1;

    .line 6
    invoke-interface {p3, p1}, Lqc1;->a(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
