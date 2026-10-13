.class public abstract Lz0;
.super Ld0;
.source "PG"


# instance fields
.field public a:LA0;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lz0;->b:I

    .line 3
    iput v0, p0, Lz0;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ld0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lz0;->b:I

    .line 6
    iput p1, p0, Lz0;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 25
    iget-object v0, p0, Lz0;->a:LA0;

    if-eqz v0, :cond_0

    .line 26
    iget v0, v0, LA0;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I)Z
    .locals 3

    .line 20
    iget-object v0, p0, Lz0;->a:LA0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 21
    iget v2, v0, LA0;->d:I

    if-eq v2, p1, :cond_0

    .line 22
    iput p1, v0, LA0;->d:I

    .line 23
    invoke-virtual {v0}, LA0;->a()V

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 24
    :cond_1
    iput p1, p0, Lz0;->b:I

    return v1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lz0;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lz0;->a:LA0;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, LA0;

    invoke-direct {p1, p2}, LA0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lz0;->a:LA0;

    .line 4
    :cond_0
    iget-object p1, p0, Lz0;->a:LA0;

    .line 5
    iget-object p2, p1, LA0;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p1, LA0;->b:I

    .line 6
    iget-object p2, p1, LA0;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, LA0;->c:I

    .line 7
    invoke-virtual {p1}, LA0;->a()V

    .line 8
    iget p1, p0, Lz0;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 9
    iget-object p3, p0, Lz0;->a:LA0;

    .line 10
    iget v0, p3, LA0;->d:I

    if-eq v0, p1, :cond_1

    .line 11
    iput p1, p3, LA0;->d:I

    .line 12
    invoke-virtual {p3}, LA0;->a()V

    .line 13
    :cond_1
    iput p2, p0, Lz0;->b:I

    .line 14
    :cond_2
    iget p1, p0, Lz0;->c:I

    if-eqz p1, :cond_4

    .line 15
    iget-object p3, p0, Lz0;->a:LA0;

    .line 16
    iget v0, p3, LA0;->e:I

    if-eq v0, p1, :cond_3

    .line 17
    iput p1, p3, LA0;->e:I

    .line 18
    invoke-virtual {p3}, LA0;->a()V

    .line 19
    :cond_3
    iput p2, p0, Lz0;->c:I

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    return-void
.end method
