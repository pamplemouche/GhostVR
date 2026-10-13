.class public abstract LcH;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[I

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1
    sput-object v1, LcH;->a:[I

    new-array v0, v0, [B

    .line 2
    sput-object v0, LcH;->b:[B

    return-void
.end method

.method public static final a(LQG;I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, LQG;->a()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, LQG;->d(I)Z

    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p0}, LQG;->h()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, LQG;->d(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, LQG;->c(I)V

    return v1
.end method
