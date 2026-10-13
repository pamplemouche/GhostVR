.class public LLM0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Ljava/lang/Runnable;

.field public final synthetic x:LMM0;


# direct methods
.method public constructor <init>(LMM0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLM0;->x:LMM0;

    iput-object p2, p0, LLM0;->w:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LLM0;->x:LMM0;

    iget-object v0, p0, LLM0;->w:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p1}, LMM0;->b()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    iget-object p1, p0, LLM0;->x:LMM0;

    .line 5
    iget-object p1, p1, LMM0;->a:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
