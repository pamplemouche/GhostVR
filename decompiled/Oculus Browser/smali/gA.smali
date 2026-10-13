.class public final synthetic LgA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLx;


# instance fields
.field public final a:LjA;


# direct methods
.method public constructor <init>(LjA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LgA;->a:LjA;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LgA;->a:LjA;

    .line 1
    invoke-virtual {v0}, LjA;->l()Lsx;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lsx;->b:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PersistentFeedStore"

    const-string v2, "Error retrieving dismiss actions for content garbage collection"

    .line 3
    invoke-static {v1, v2, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
