.class public LQf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, LQf;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;LLf;IZ)I
    .locals 0

    .line 8
    iget p5, p0, LQf;->a:I

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result p1

    .line 10
    invoke-virtual {p3, p2, p4, p1}, LLf;->a(Landroid/view/View;II)I

    move-result p1

    sub-int/2addr p5, p1

    return p5
.end method

.method public a(Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 6
    iget p1, p0, LQf;->c:I

    invoke-static {p1}, Landroid/support/v7/widget/GridLayout;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x186a0

    return p1

    .line 7
    :cond_0
    iget p1, p0, LQf;->a:I

    iget v0, p0, LQf;->b:I

    add-int/2addr p1, v0

    return p1
.end method

.method public a()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    iput v0, p0, LQf;->a:I

    .line 2
    iput v0, p0, LQf;->b:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, LQf;->c:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 4
    iget v0, p0, LQf;->a:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LQf;->a:I

    .line 5
    iget p1, p0, LQf;->b:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LQf;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Bounds{before="

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LQf;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LQf;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
