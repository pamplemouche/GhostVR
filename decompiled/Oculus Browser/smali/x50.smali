.class public Lx50;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lv50;


# instance fields
.field public final a:Lw50;

.field public final b:Lj50;


# direct methods
.method public constructor <init>(Lj50;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx50;->b:Lj50;

    .line 3
    new-instance p1, Lw50;

    invoke-direct {p1}, Lw50;-><init>()V

    iput-object p1, p0, Lx50;->a:Lw50;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lx50;->a:Lw50;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {p1}, LJ/N;->MeNcRA0y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lx50;->b:Lj50;

    .line 5
    invoke-virtual {v0}, Lj50;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lx50;->a:Lw50;

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    invoke-static {v0}, LJ/N;->MfiRqZsy(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 11
    :cond_3
    throw v2

    .line 12
    :cond_4
    throw v2

    :cond_5
    :goto_0
    return v1
.end method
