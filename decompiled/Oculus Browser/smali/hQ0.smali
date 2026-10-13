.class public LhQ0;
.super LGM0;
.source "PG"


# instance fields
.field public final synthetic x:LlQ0;


# direct methods
.method public constructor <init>(LlQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LhQ0;->x:LlQ0;

    invoke-direct {p0}, LGM0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LhQ0;->x:LlQ0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, LhQ0;->x:LlQ0;

    .line 3
    iget-object p1, p1, LlQ0;->C:LjQ0;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, LjQ0;->e:LiQ0;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, LiQ0;->c(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, LhQ0;->x:LlQ0;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, LlQ0;->a(LjQ0;)V

    return-void
.end method
