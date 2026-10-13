.class public LbF;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:LdF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LbF;->a:Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, LdF;

    invoke-direct {v1, v0}, LdF;-><init>(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, LbF;->b:LdF;

    return-void
.end method


# virtual methods
.method public a(LSE;)LbF;
    .locals 1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, LbF;->a:Ljava/lang/StringBuilder;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1, p0}, LSE;->a(LbF;)V

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)LbF;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSE;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, LbF;->a:Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_1
    invoke-virtual {p0, v1}, LbF;->a(LSE;)LbF;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public a(Ljava/lang/Object;)LbF;
    .locals 1

    .line 1
    instance-of v0, p1, LSE;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, LSE;

    invoke-virtual {p0, p1}, LbF;->a(LSE;)LbF;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
