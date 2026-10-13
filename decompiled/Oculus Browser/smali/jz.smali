.class public final Ljz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldy;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljz;->b:I

    .line 3
    iput v0, p0, Ljz;->c:I

    .line 4
    iput v0, p0, Ljz;->d:I

    .line 5
    iput v0, p0, Ljz;->e:I

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljz;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lfy;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "ContentCache"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p1, Lfy;->a:I

    .line 3
    new-instance v1, Ley;

    const-string v2, "mutationCacheSize"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 4
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Ljz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 6
    iget-object v1, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget v0, p1, Lfy;->a:I

    .line 8
    new-instance v1, Ley;

    const-string v2, "mutationsCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 9
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget v0, p0, Ljz;->e:I

    .line 11
    iget-object v2, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, v1, Ley;->d:Z

    .line 13
    iget v1, p1, Lfy;->a:I

    .line 14
    new-instance v2, Ley;

    const-string v3, "maxMutationCacheSize"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 15
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget v1, p0, Ljz;->d:I

    .line 17
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    iput-boolean v0, v2, Ley;->d:Z

    .line 19
    iget v1, p1, Lfy;->a:I

    .line 20
    new-instance v2, Ley;

    const-string v3, "lookupCount"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 21
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget v1, p0, Ljz;->b:I

    .line 23
    iget-object v2, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p1, Lfy;->a:I

    .line 25
    new-instance v2, Ley;

    const-string v3, "hits"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 26
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget v1, p0, Ljz;->c:I

    .line 28
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    iput-boolean v0, v2, Ley;->d:Z

    .line 30
    iget v1, p1, Lfy;->a:I

    .line 31
    new-instance v2, Ley;

    const-string v3, "misses"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 32
    iget-object p1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget p1, p0, Ljz;->b:I

    iget v1, p0, Ljz;->c:I

    sub-int/2addr p1, v1

    .line 34
    iget-object v1, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    iput-boolean v0, v2, Ley;->d:Z

    return-void
.end method
