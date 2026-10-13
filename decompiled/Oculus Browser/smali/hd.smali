.class public Lhd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljd;

.field public final synthetic x:Landroid/view/MenuItem;

.field public final synthetic y:Lqd;

.field public final synthetic z:Lid;


# direct methods
.method public constructor <init>(Lid;Ljd;Landroid/view/MenuItem;Lqd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhd;->z:Lid;

    iput-object p2, p0, Lhd;->w:Ljd;

    iput-object p3, p0, Lhd;->x:Landroid/view/MenuItem;

    iput-object p4, p0, Lhd;->y:Lqd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhd;->w:Ljd;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lhd;->z:Lid;

    iget-object v1, v1, Lid;->w:Lkd;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkd;->W:Z

    .line 3
    iget-object v0, v0, Ljd;->b:Lqd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqd;->a(Z)V

    .line 4
    iget-object v0, p0, Lhd;->z:Lid;

    iget-object v0, v0, Lid;->w:Lkd;

    iput-boolean v1, v0, Lkd;->W:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lhd;->x:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhd;->x:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lhd;->y:Lqd;

    iget-object v1, p0, Lhd;->x:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lqd;->a(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
