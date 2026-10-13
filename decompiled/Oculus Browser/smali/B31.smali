.class public LB31;
.super LS61;
.source "PG"

# interfaces
.implements LJ61;


# instance fields
.field public final w:Lq31;


# direct methods
.method public constructor <init>(Lq31;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LS61;-><init>()V

    .line 2
    iput-object p1, p0, LB31;->w:Lq31;

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 2
    iget-object p1, p1, LR61;->d:LI61;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1, v0, v1}, LI61;->a(II)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object p1, p0, LB31;->w:Lq31;
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, LC31;

    :try_start_1
    invoke-virtual {p1}, LC31;->a()V
    :try_end_1
    .catch Lo61; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
