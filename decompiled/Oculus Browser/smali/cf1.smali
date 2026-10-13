.class public Lcf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic w:Lef1;


# direct methods
.method public constructor <init>(Lef1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcf1;->w:Lef1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcf1;->w:Lef1;

    .line 2
    iget-boolean v1, v0, Lef1;->Q:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lef1;->z:Landroid/os/Handler;

    .line 4
    iget-object v0, v0, Lef1;->D:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcf1;->w:Lef1;

    .line 7
    iget-object v0, v0, Lef1;->G:LWT;

    .line 8
    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcf1;->w:Lef1;

    .line 10
    iget-object v0, v0, Lef1;->C:Lhf1;

    .line 11
    invoke-virtual {v0}, Lhf1;->b()V

    return-void
.end method
