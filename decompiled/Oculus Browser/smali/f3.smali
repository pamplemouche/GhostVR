.class public final Lf3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:Ljava/util/ArrayList;

.field public final synthetic B:Ljava/util/ArrayList;

.field public final synthetic C:Ljava/util/ArrayList;

.field public final synthetic D:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Ls3;

.field public final synthetic y:Landroid/view/View;

.field public final synthetic z:Lz2;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ls3;Landroid/view/View;Lz2;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf3;->w:Ljava/lang/Object;

    iput-object p2, p0, Lf3;->x:Ls3;

    iput-object p3, p0, Lf3;->y:Landroid/view/View;

    iput-object p4, p0, Lf3;->z:Lz2;

    iput-object p5, p0, Lf3;->A:Ljava/util/ArrayList;

    iput-object p6, p0, Lf3;->B:Ljava/util/ArrayList;

    iput-object p7, p0, Lf3;->C:Ljava/util/ArrayList;

    iput-object p8, p0, Lf3;->D:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf3;->w:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf3;->x:Ls3;

    iget-object v2, p0, Lf3;->y:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Ls3;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lf3;->x:Ls3;

    iget-object v1, p0, Lf3;->w:Ljava/lang/Object;

    iget-object v2, p0, Lf3;->z:Lz2;

    iget-object v3, p0, Lf3;->A:Ljava/util/ArrayList;

    iget-object v4, p0, Lf3;->y:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lj3;->a(Ls3;Ljava/lang/Object;Lz2;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lf3;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lf3;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lf3;->D:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lf3;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lf3;->x:Ls3;

    iget-object v2, p0, Lf3;->D:Ljava/lang/Object;

    iget-object v3, p0, Lf3;->C:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Ls3;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lf3;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v0, p0, Lf3;->C:Ljava/util/ArrayList;

    iget-object v1, p0, Lf3;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
