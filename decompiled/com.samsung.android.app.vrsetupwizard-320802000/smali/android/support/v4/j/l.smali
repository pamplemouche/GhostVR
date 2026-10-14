.class abstract Landroid/support/v4/j/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/j/g;


# instance fields
.field private final a:Landroid/support/v4/j/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/j/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/j/l;->a:Landroid/support/v4/j/k;

    return-void
.end method

.method private b(Ljava/lang/CharSequence;II)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j/l;->a:Landroid/support/v4/j/k;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/j/k;->a(Ljava/lang/CharSequence;II)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/j/l;->a()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return p2
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method public a(Ljava/lang/CharSequence;II)Z
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/j/l;->a:Landroid/support/v4/j/k;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/j/l;->a()Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/j/l;->b(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
