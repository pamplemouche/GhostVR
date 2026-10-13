.class public LTW;
.super LS61;
.source "PG"

# interfaces
.implements LJ61;


# instance fields
.field public final w:LHW;


# direct methods
.method public constructor <init>(LHW;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LS61;-><init>()V

    .line 2
    iput-object p1, p0, LTW;->w:LHW;

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 2
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v3, v2}, LI61;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LSW;->a(LH61;)LSW;

    move-result-object p1

    .line 5
    iget-object v1, p0, LTW;->w:LHW;

    iget v2, p1, LSW;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, LSW;->c:LMX;
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, LUW;

    :try_start_1
    invoke-virtual {v1, v2, p1}, LUW;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lo61; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    return v0
.end method
