.class public Ld2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LR1;

.field public final synthetic x:Landroid/view/View;


# direct methods
.method public constructor <init>(Lg2;LR1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2;->w:LR1;

    iput-object p3, p0, Ld2;->x:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld2;->w:LR1;

    iget-object v0, p0, Ld2;->x:Landroid/view/View;

    invoke-interface {p1, v0}, LR1;->a(Landroid/view/View;)V

    return-void
.end method
