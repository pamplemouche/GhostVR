.class public final Lg3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:Landroid/view/View;

.field public final synthetic B:Ls3;

.field public final synthetic C:Landroid/graphics/Rect;

.field public final synthetic w:Lz2;

.field public final synthetic x:Lz2;

.field public final synthetic y:Z

.field public final synthetic z:LJ6;


# direct methods
.method public constructor <init>(Lz2;Lz2;ZLJ6;Landroid/view/View;Ls3;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg3;->w:Lz2;

    iput-object p2, p0, Lg3;->x:Lz2;

    iput-boolean p3, p0, Lg3;->y:Z

    iput-object p4, p0, Lg3;->z:LJ6;

    iput-object p5, p0, Lg3;->A:Landroid/view/View;

    iput-object p6, p0, Lg3;->B:Ls3;

    iput-object p7, p0, Lg3;->C:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg3;->w:Lz2;

    iget-object v1, p0, Lg3;->x:Lz2;

    iget-boolean v2, p0, Lg3;->y:Z

    iget-object v3, p0, Lg3;->z:LJ6;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lj3;->a(Lz2;Lz2;ZLJ6;Z)V

    .line 2
    iget-object v0, p0, Lg3;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lg3;->B:Ls3;

    iget-object v2, p0, Lg3;->C:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Ls3;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
