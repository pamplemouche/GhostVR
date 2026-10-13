.class public LYW;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIW;


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
    iput-object p1, p0, LYW;->a:Lj71;

    .line 3
    iput-object p2, p0, LYW;->b:LJ61;

    .line 4
    iput-wide p3, p0, LYW;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    new-instance v0, LWW;

    invoke-direct {v0}, LWW;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, LWW;->b:Z

    .line 4
    iget-object p1, p0, LYW;->a:Lj71;

    new-instance v1, LI61;

    iget-wide v2, p0, LYW;->c:J

    const/4 v4, 0x2

    invoke-direct {v1, v4, v4, v2, v3}, LI61;-><init>(IIJ)V

    .line 5
    invoke-virtual {v0, p1, v1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 6
    iget-object v0, p0, LYW;->b:LJ61;

    invoke-interface {v0, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
