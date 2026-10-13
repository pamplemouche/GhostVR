.class public final LTa;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public b:Lbb;


# direct methods
.method public constructor <init>(Lbb;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, LTa;->a:Landroid/os/Bundle;

    .line 3
    iput-object p1, p0, LTa;->b:Lbb;

    .line 4
    iget-object p1, p1, Lbb;->a:Landroid/os/Bundle;

    const-string v1, "selector"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    iget-object p1, p0, LTa;->a:Landroid/os/Bundle;

    const-string v0, "activeScan"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LTa;->b:Lbb;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LTa;->a:Landroid/os/Bundle;

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lbb;->a(Landroid/os/Bundle;)Lbb;

    move-result-object v0

    iput-object v0, p0, LTa;->b:Lbb;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lbb;->c:Lbb;

    iput-object v0, p0, LTa;->b:Lbb;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, LTa;->a:Landroid/os/Bundle;

    const-string v1, "activeScan"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LTa;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, LTa;

    .line 3
    invoke-virtual {p0}, LTa;->a()V

    .line 4
    iget-object v0, p0, LTa;->b:Lbb;

    .line 5
    invoke-virtual {p1}, LTa;->a()V

    .line 6
    iget-object v2, p1, LTa;->b:Lbb;

    .line 7
    invoke-virtual {v0, v2}, Lbb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, LTa;->b()Z

    move-result v0

    invoke-virtual {p1}, LTa;->b()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, LTa;->a()V

    .line 2
    iget-object v0, p0, LTa;->b:Lbb;

    .line 3
    invoke-virtual {v0}, Lbb;->hashCode()I

    move-result v0

    invoke-virtual {p0}, LTa;->b()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveryRequest{ selector="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, LTa;->a()V

    .line 4
    iget-object v1, p0, LTa;->b:Lbb;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeScan="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LTa;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, LTa;->a()V

    .line 9
    iget-object v1, p0, LTa;->b:Lbb;

    .line 10
    invoke-virtual {v1}, Lbb;->a()V

    .line 11
    iget-object v1, v1, Lbb;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
