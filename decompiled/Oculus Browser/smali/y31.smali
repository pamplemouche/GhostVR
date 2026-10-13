.class public Ly31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lo31;


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
    iput-object p1, p0, Ly31;->a:Lj71;

    .line 3
    iput-object p2, p0, Ly31;->b:LJ61;

    .line 4
    iput-wide p3, p0, Ly31;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    new-instance v0, Lw31;

    invoke-direct {v0}, Lw31;-><init>()V

    .line 2
    iget-object v1, p0, Ly31;->a:Lj71;

    new-instance v2, LI61;

    iget-wide v3, p0, Ly31;->c:J

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, LI61;-><init>(IIJ)V

    .line 3
    invoke-virtual {v0, v1, v2}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ly31;->b:LJ61;

    invoke-interface {v1, v0}, LJ61;->a(LH61;)Z

    return-void
.end method
