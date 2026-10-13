.class public LU21;
.super LS61;
.source "PG"

# interfaces
.implements LJ61;


# instance fields
.field public final w:Lp21;


# direct methods
.method public constructor <init>(Lp21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LS61;-><init>()V

    .line 2
    iput-object p1, p0, LU21;->w:Lp21;

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 2
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2, v2}, LI61;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LT21;->a(LH61;)LT21;

    move-result-object p1

    .line 5
    iget-object v1, p0, LU21;->w:Lp21;

    iget-object p1, p1, LT21;->b:LC21;
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, LV21;

    :try_start_1
    invoke-virtual {v1, p1}, LV21;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lo61; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
