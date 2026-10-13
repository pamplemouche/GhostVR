.class public LEf0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LGf0;


# direct methods
.method public constructor <init>(LGf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEf0;->w:LGf0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, LEf0;->w:LGf0;

    invoke-virtual {p1}, LGf0;->c()V

    .line 2
    iget-object p1, p0, LEf0;->w:LGf0;

    iget-object v0, p1, LGf0;->b:LJf0;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, LJf0;->B:LGf0;

    .line 4
    iget-object v0, v0, LJf0;->A:Lvf0;

    .line 5
    invoke-virtual {p1}, LGf0;->b()I

    move-result p1

    invoke-interface {v0, p1}, Lvf0;->a(I)V

    .line 6
    iget-object p1, p0, LEf0;->w:LGf0;

    iget-object p1, p1, LGf0;->b:LJf0;

    .line 7
    invoke-virtual {p1}, LJf0;->c()V

    return-void
.end method
