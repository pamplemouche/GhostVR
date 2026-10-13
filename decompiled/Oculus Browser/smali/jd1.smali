.class public Ljd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnd1;


# instance fields
.field public final a:LF0;

.field public final b:LE0;

.field public c:Z


# direct methods
.method public constructor <init>(LF0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljd1;->a:LF0;

    .line 3
    new-instance v0, Lid1;

    invoke-direct {v0, p0, p1}, Lid1;-><init>(Ljd1;LF0;)V

    iput-object v0, p0, Ljd1;->b:LE0;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ljd1;->c:Z

    .line 2
    iget-object v0, p0, Ljd1;->a:LF0;

    iget-object v1, p0, Ljd1;->b:LE0;

    check-cast v0, LK0;

    invoke-virtual {v0, v1}, LK0;->a(LE0;)V

    .line 3
    iget-object v0, p0, Ljd1;->a:LF0;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ljd1;->c:Z

    .line 2
    iget-object v0, p0, Ljd1;->a:LF0;

    iget-object v1, p0, Ljd1;->b:LE0;

    check-cast v0, LK0;

    .line 3
    iget-object v2, v0, LO0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 4
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 5
    iget-object v3, v1, LE0;->a:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    if-nez v3, :cond_0

    .line 6
    new-instance v3, LD0;

    invoke-direct {v3, v1}, LD0;-><init>(LE0;)V

    iput-object v3, v1, LE0;->a:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 7
    :cond_0
    iget-object v3, v1, LE0;->a:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 8
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 9
    :cond_1
    iget-object v2, v0, LK0;->B:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, v0, LK0;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, v0, LK0;->A:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_3

    .line 13
    iget-object v2, v0, LK0;->x:LI0;

    iget-object v2, v2, LI0;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, LK0;->A:Landroid/animation/Animator$AnimatorListener;

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Ljd1;->a:LF0;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method
