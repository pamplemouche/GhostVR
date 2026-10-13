.class public final Lh3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:Ljava/util/ArrayList;

.field public final synthetic B:Landroid/view/View;

.field public final synthetic C:Lz2;

.field public final synthetic D:Lz2;

.field public final synthetic E:Z

.field public final synthetic F:Ljava/util/ArrayList;

.field public final synthetic G:Ljava/lang/Object;

.field public final synthetic H:Landroid/graphics/Rect;

.field public final synthetic w:Ls3;

.field public final synthetic x:LJ6;

.field public final synthetic y:Ljava/lang/Object;

.field public final synthetic z:Li3;


# direct methods
.method public constructor <init>(Ls3;LJ6;Ljava/lang/Object;Li3;Ljava/util/ArrayList;Landroid/view/View;Lz2;Lz2;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh3;->w:Ls3;

    iput-object p2, p0, Lh3;->x:LJ6;

    iput-object p3, p0, Lh3;->y:Ljava/lang/Object;

    iput-object p4, p0, Lh3;->z:Li3;

    iput-object p5, p0, Lh3;->A:Ljava/util/ArrayList;

    iput-object p6, p0, Lh3;->B:Landroid/view/View;

    iput-object p7, p0, Lh3;->C:Lz2;

    iput-object p8, p0, Lh3;->D:Lz2;

    iput-boolean p9, p0, Lh3;->E:Z

    iput-object p10, p0, Lh3;->F:Ljava/util/ArrayList;

    iput-object p11, p0, Lh3;->G:Ljava/lang/Object;

    iput-object p12, p0, Lh3;->H:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lh3;->w:Ls3;

    iget-object v1, p0, Lh3;->x:LJ6;

    iget-object v2, p0, Lh3;->y:Ljava/lang/Object;

    iget-object v3, p0, Lh3;->z:Li3;

    invoke-static {v0, v1, v2, v3}, Lj3;->a(Ls3;LJ6;Ljava/lang/Object;Li3;)LJ6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lh3;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, LJ6;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lh3;->A:Ljava/util/ArrayList;

    iget-object v2, p0, Lh3;->B:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lh3;->C:Lz2;

    iget-object v2, p0, Lh3;->D:Lz2;

    iget-boolean v3, p0, Lh3;->E:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lj3;->a(Lz2;Lz2;ZLJ6;Z)V

    .line 5
    iget-object v1, p0, Lh3;->y:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lh3;->w:Ls3;

    iget-object v3, p0, Lh3;->F:Ljava/util/ArrayList;

    iget-object v4, p0, Lh3;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Ls3;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7
    iget-object v1, p0, Lh3;->z:Li3;

    iget-object v2, p0, Lh3;->G:Ljava/lang/Object;

    iget-boolean v3, p0, Lh3;->E:Z

    invoke-static {v0, v1, v2, v3}, Lj3;->a(LJ6;Li3;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lh3;->w:Ls3;

    iget-object v2, p0, Lh3;->H:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Ls3;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
