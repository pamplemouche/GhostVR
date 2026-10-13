.class public final LJE;
.super LZE;
.source "PG"


# static fields
.field public static final f:LJE;


# instance fields
.field public final c:Ljava/util/List;

.field public final d:LwE;

.field public final e:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJE;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, LJE;-><init>(Ljava/util/Collection;LwE;Ljava/util/Collection;)V

    sput-object v0, LJE;->f:LJE;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;LwE;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "registrations"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LJE;->c:Ljava/util/List;

    .line 3
    iput-object p2, p0, LJE;->d:LwE;

    const-string p1, "pending_operations"

    .line 4
    invoke-static {p1, p3}, LZE;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LJE;->e:Ljava/util/List;

    return-void
.end method

.method public static a(LFH;)LJE;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LFH;->c:[LZH;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v3, p0, LFH;->c:[LZH;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 18
    aget-object v3, v3, v2

    invoke-static {v3}, LmE;->a(LZH;)LmE;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, LFH;->e:[LfI;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    :goto_1
    iget-object v3, p0, LFH;->e:[LfI;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 21
    aget-object v3, v3, v1

    invoke-static {v3}, LsE;->a(LfI;)LsE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_2
    new-instance v1, LJE;

    iget-object p0, p0, LFH;->d:LjI;

    .line 23
    invoke-static {p0}, LwE;->a(LjI;)LwE;

    move-result-object p0

    invoke-direct {v1, v0, p0, v2}, LJE;-><init>(Ljava/util/Collection;LwE;Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 12
    iget-object v0, p0, LJE;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, LJE;->d:LwE;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    invoke-virtual {v1}, LZE;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v1, p0, LJE;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<RegistrationManagerStateP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " registrations=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, LJE;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 4
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, LJE;->d:LwE;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v2, " last_known_server_summary="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, LJE;->d:LwE;

    invoke-virtual {p1, v0}, LbF;->a(LSE;)LbF;

    .line 8
    :cond_0
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v2, " pending_operations=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, LJE;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, LbF;->a(Ljava/lang/Iterable;)LbF;

    .line 10
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 11
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LJE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LJE;

    .line 3
    iget-object v1, p0, LJE;->c:Ljava/util/List;

    iget-object v3, p1, LJE;->c:Ljava/util/List;

    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LJE;->d:LwE;

    iget-object v3, p1, LJE;->d:LwE;

    .line 4
    invoke-static {v1, v3}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LJE;->e:Ljava/util/List;

    iget-object p1, p1, LJE;->e:Ljava/util/List;

    .line 5
    invoke-static {v1, p1}, LZE;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
