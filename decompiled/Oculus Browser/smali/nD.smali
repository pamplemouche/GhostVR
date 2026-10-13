.class public LnD;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlC;


# instance fields
.field public final synthetic a:LoD;


# direct methods
.method public constructor <init>(LoD;)V
    .locals 0

    .line 1
    iput-object p1, p0, LnD;->a:LoD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, LqC;

    .line 2
    iget-object p1, p1, LqC;->a:LpC;

    .line 3
    sget-object v0, LpC;->w:LpC;

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, LnD;->a:LoD;

    iget-object p1, p1, LoD;->a:Lcom/google/ipc/invalidation/ticl/android2/TiclService;

    .line 5
    iget-object p1, p1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 6
    iget-object p1, p1, LsC;->b:LZB;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    check-cast p1, LgC;

    const-string v1, "Failed saving rewritten persistent state to storage"

    invoke-virtual {p1, v1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
