.class public final Lpo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LJ6;

.field public final b:LJ6;

.field public final c:Lcv;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, Lpo;->b:LJ6;

    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    iput-object v0, p0, Lpo;->c:Lcv;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpo;->e:Z

    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, Lpo;->a:LJ6;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDm;

    iget-object v1, p0, Lpo;->a:LJ6;

    .line 1
    iget-object v0, v0, LDm;->d:Loo;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v0, v2}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lpo;->a:LJ6;

    invoke-virtual {p1}, LJ6;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lpo;->d:I

    return-void
.end method


# virtual methods
.method public final a(Loo;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lpo;->a:LJ6;

    invoke-virtual {v0, p1, p2}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpo;->b:LJ6;

    invoke-virtual {v0, p1, p3}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lpo;->d:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lpo;->d:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean p3, p0, Lpo;->e:Z

    :cond_0
    iget p1, p0, Lpo;->d:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lpo;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, LAm;

    iget-object p2, p0, Lpo;->a:LJ6;

    invoke-direct {p1, p2}, LAm;-><init>(LJ6;)V

    iget-object p2, p0, Lpo;->c:Lcv;

    .line 1
    iget-object p2, p2, Lcv;->a:Lsv;

    invoke-virtual {p2, p1}, Lsv;->a(Ljava/lang/Exception;)V

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Lpo;->c:Lcv;

    iget-object p2, p0, Lpo;->b:LJ6;

    .line 3
    iget-object p1, p1, Lcv;->a:Lsv;

    invoke-virtual {p1, p2}, Lsv;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
