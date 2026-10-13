.class public abstract LQE;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public c:I

.field public d:Z

.field public final e:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    .line 2
    iput-object p1, p0, LQE;->e:Ljava/util/Random;

    if-lez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 3
    iput p2, p0, LQE;->a:I

    mul-int p2, p2, p3

    .line 4
    iput p2, p0, LQE;->b:I

    if-lez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string p1, "max delay must be positive"

    .line 5
    invoke-static {v0, p1}, LWE;->a(ZLjava/lang/Object;)V

    .line 6
    iget p1, p0, LQE;->a:I

    iput p1, p0, LQE;->c:I

    .line 7
    iput-boolean v1, p0, LQE;->d:Z

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initial delay must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 9
    throw p1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max factor must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
