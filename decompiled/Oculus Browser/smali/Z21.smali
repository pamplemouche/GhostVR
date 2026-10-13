.class public LZ21;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lq21;


# instance fields
.field public final a:Lj71;

.field public final b:LJ61;

.field public final c:J


# direct methods
.method public constructor <init>(Lj71;LJ61;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LZ21;->a:Lj71;

    .line 3
    iput-object p2, p0, LZ21;->b:LJ61;

    .line 4
    iput-wide p3, p0, LZ21;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, LC21;

    .line 2
    new-instance v0, LX21;

    invoke-direct {v0}, LX21;-><init>()V

    .line 3
    iput-object p1, v0, LX21;->b:LC21;

    .line 4
    iget-object p1, p0, LZ21;->a:Lj71;

    new-instance v1, LI61;

    iget-wide v2, p0, LZ21;->c:J

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5, v2, v3}, LI61;-><init>(IIJ)V

    .line 5
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 6
    iget-object v0, p0, LZ21;->b:LJ61;

    invoke-interface {v0, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
