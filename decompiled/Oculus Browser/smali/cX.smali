.class public LcX;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJW;


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
    iput-object p1, p0, LcX;->a:Lj71;

    .line 3
    iput-object p2, p0, LcX;->b:LJ61;

    .line 4
    iput-wide p3, p0, LcX;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, LNX;

    .line 2
    new-instance v0, LaX;

    invoke-direct {v0}, LaX;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, LaX;->b:I

    .line 4
    iput-object p2, v0, LaX;->c:LNX;

    .line 5
    iget-object p1, p0, LcX;->a:Lj71;

    new-instance p2, LI61;

    iget-wide v1, p0, LcX;->c:J

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p2, v3, v4, v1, v2}, LI61;-><init>(IIJ)V

    .line 6
    invoke-virtual {v0, p1, p2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 7
    iget-object p2, p0, LcX;->b:LJ61;

    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
