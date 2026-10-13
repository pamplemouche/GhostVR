.class public LK2;
.super LP2;
.source "PG"


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lz2;

.field public final synthetic d:LY2;


# direct methods
.method public constructor <init>(LY2;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Lz2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK2;->d:LY2;

    iput-object p3, p0, LK2;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, LK2;->c:Lz2;

    invoke-direct {p0, p2}, LP2;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, LP2;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3
    :cond_0
    iget-object p1, p0, LK2;->b:Landroid/view/ViewGroup;

    new-instance v0, LJ2;

    invoke-direct {v0, p0}, LJ2;-><init>(LK2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
