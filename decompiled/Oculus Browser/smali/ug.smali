.class public abstract Lug;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LQg;

.field public b:I

.field public final c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(LQg;Lsg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, -0x80000000

    .line 2
    iput p2, p0, Lug;->b:I

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lug;->c:Landroid/graphics/Rect;

    .line 4
    iput-object p1, p0, Lug;->a:LQg;

    return-void
.end method

.method public static a(LQg;I)Lug;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Ltg;

    invoke-direct {p1, p0}, Ltg;-><init>(LQg;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p1, Lsg;

    invoke-direct {p1, p0}, Lsg;-><init>(LQg;)V

    return-object p1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;)I
.end method

.method public abstract a(I)V
.end method

.method public abstract b()I
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract f(Landroid/view/View;)I
.end method

.method public abstract g()I
.end method

.method public h()I
    .locals 2

    .line 1
    iget v0, p0, Lug;->b:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lug;->g()I

    move-result v0

    iget v1, p0, Lug;->b:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method
