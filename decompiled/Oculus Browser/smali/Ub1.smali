.class public LUb1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:LZb1;


# direct methods
.method public constructor <init>(LZb1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LUb1;->a:LZb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, LUb1;->a:LZb1;

    .line 2
    iget-boolean v0, p1, LZb1;->E:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, LZb1;->S:Landroid/view/animation/Animation$AnimationListener;

    .line 4
    invoke-virtual {p1, v0}, LZb1;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
