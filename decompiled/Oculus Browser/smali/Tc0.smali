.class public LTc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTc0;->w:Lbd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LTc0;->w:Lbd0;

    .line 2
    invoke-virtual {v0}, Lbd0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 3
    :goto_0
    iget-object v1, p0, LTc0;->w:Lbd0;

    .line 4
    iget-object v1, v1, Lbd0;->C:LDJ0;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, LDJ0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, LTc0;->w:Lbd0;

    .line 7
    iget-object v1, v1, Lbd0;->C:LDJ0;

    .line 8
    invoke-interface {v1}, LDJ0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, LTc0;->w:Lbd0;

    .line 10
    iget-object v0, v0, Lbd0;->C:LDJ0;

    .line 11
    invoke-interface {v0}, LDJ0;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_1
    return-void
.end method
