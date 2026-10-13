.class public LlL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LiL0;


# instance fields
.field public final a:LpL0;

.field public final b:Lle1;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LpL0;

    invoke-direct {v0}, LpL0;-><init>()V

    iput-object v0, p0, LlL0;->a:LpL0;

    .line 3
    new-instance v1, LjL0;

    invoke-direct {v1, v0}, LjL0;-><init>(LpL0;)V

    const/4 v0, 0x4

    new-array v0, v0, [LUd1;

    .line 4
    sget-object v2, LsL0;->a:Lhe1;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, LsL0;->b:Lfe1;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    sget-object v2, LsL0;->c:Lfe1;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    sget-object v2, LsL0;->d:Lke1;

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 5
    invoke-static {v0}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v0

    .line 6
    sget-object v2, LsL0;->a:Lhe1;

    .line 7
    new-instance v4, LWd1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, LWd1;-><init>(LVd1;)V

    .line 8
    iput-boolean v3, v4, LWd1;->a:Z

    .line 9
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, LsL0;->b:Lfe1;

    new-instance v3, LKd1;

    invoke-direct {v3}, LKd1;-><init>()V

    .line 11
    new-instance v4, Lbe1;

    invoke-direct {v4, v5}, Lbe1;-><init>(LVd1;)V

    .line 12
    iput-object v3, v4, Lbe1;->a:Ljava/lang/Object;

    .line 13
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v2, LsL0;->c:Lfe1;

    .line 15
    new-instance v3, Lbe1;

    invoke-direct {v3, v5}, Lbe1;-><init>(LVd1;)V

    .line 16
    iput-object v1, v3, Lbe1;->a:Ljava/lang/Object;

    .line 17
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Lle1;

    invoke-direct {v1, v0, v5}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 19
    iput-object v1, p0, LlL0;->b:Lle1;

    return-void
.end method
