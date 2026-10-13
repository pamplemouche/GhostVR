.class public final Loo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Lym;

.field public final d:Lum;


# direct methods
.method public constructor <init>(Lym;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Loo;->a:Z

    iput-object p1, p0, Loo;->c:Lym;

    const/4 p1, 0x0

    iput-object p1, p0, Loo;->d:Lum;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Loo;->b:I

    return-void
.end method

.method public constructor <init>(Lym;Lum;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Loo;->a:Z

    iput-object p1, p0, Loo;->c:Lym;

    iput-object p2, p0, Loo;->d:Lum;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 1
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    .line 2
    iput p1, p0, Loo;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Loo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Loo;

    iget-boolean v1, p0, Loo;->a:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Loo;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Loo;->c:Lym;

    iget-object v3, p1, Loo;->c:Lym;

    invoke-static {v1, v3}, Lwp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Loo;->d:Lum;

    iget-object p1, p1, Loo;->d:Lum;

    invoke-static {v1, p1}, Lwp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Loo;->b:I

    return v0
.end method
