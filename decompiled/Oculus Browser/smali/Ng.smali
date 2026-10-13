.class public LNg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfi;


# instance fields
.field public final synthetic a:LQg;


# direct methods
.method public constructor <init>(LQg;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNg;->a:LQg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 2
    iget-object v0, p0, LNg;->a:LQg;

    .line 3
    iget v1, v0, LQg;->p:I

    .line 4
    invoke-virtual {v0}, LQg;->i()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 6
    iget-object v1, p0, LNg;->a:LQg;

    invoke-virtual {v1, p1}, LQg;->h(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LNg;->a:LQg;

    invoke-virtual {v0, p1}, LQg;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, LNg;->a:LQg;

    invoke-virtual {v0}, LQg;->l()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 3
    iget-object v1, p0, LNg;->a:LQg;

    invoke-virtual {v1, p1}, LQg;->c(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method
