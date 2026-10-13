.class public final Luq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lgq;)Lhq;
    .locals 2

    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    invoke-interface {p3, p1, p2}, Lgq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lhq;->a:I

    const/4 v1, 0x1

    invoke-interface {p3, p1, p2, v1}, Lgq;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lhq;->b:I

    iget p2, v0, Lhq;->a:I

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, v0, Lhq;->b:I

    iget p2, v0, Lhq;->a:I

    if-lt p1, p2, :cond_1

    iput v1, v0, Lhq;->c:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Lhq;->c:I

    :goto_1
    return-object v0
.end method
