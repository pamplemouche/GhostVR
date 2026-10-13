.class public final LAn;
.super LEn;
.source "PG"


# instance fields
.field public final x:Ljava/util/ArrayList;

.field public final synthetic y:Lun;


# direct methods
.method public constructor <init>(Lun;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, LAn;->y:Lun;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LEn;-><init>(Lun;Lvn;)V

    iput-object p2, p0, LAn;->x:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, LAn;->y:Lun;

    .line 1
    iget-object v1, v0, Lun;->a:LMn;

    .line 2
    iget-object v1, v1, LMn;->m:LGn;

    .line 3
    iget-object v2, v0, Lun;->r:LVo;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lun;->r:LVo;

    .line 4
    iget-object v3, v3, LVo;->b:Ljava/util/Set;

    .line 5
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lun;->r:LVo;

    .line 6
    iget-object v3, v3, LVo;->d:Ljava/util/Map;

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lym;

    iget-object v6, v0, Lun;->a:LMn;

    iget-object v6, v6, LMn;->g:Ljava/util/Map;

    invoke-virtual {v5}, Lym;->a()Lqm;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUo;

    const/4 v0, 0x0

    throw v0

    :cond_2
    move-object v0, v2

    .line 8
    :goto_1
    iput-object v0, v1, LGn;->q:Ljava/util/Set;

    iget-object v0, p0, LAn;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lwm;

    iget-object v4, p0, LAn;->y:Lun;

    .line 9
    iget-object v5, v4, Lun;->o:Llp;

    .line 10
    iget-object v4, v4, Lun;->a:LMn;

    .line 11
    iget-object v4, v4, LMn;->m:LGn;

    iget-object v4, v4, LGn;->q:Ljava/util/Set;

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Llp;Ljava/util/Set;)V

    goto :goto_2

    :cond_3
    return-void
.end method
