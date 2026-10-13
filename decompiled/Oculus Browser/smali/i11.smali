.class public Li11;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ln11;


# instance fields
.field public final synthetic a:Lj11;


# direct methods
.method public constructor <init>(Lj11;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li11;->a:Lj11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk21;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Li11;->a:Lj11;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lj11;->c:Z

    .line 4
    iput-object p1, v0, Lj11;->d:Lk21;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Li11;->a:Lj11;

    .line 6
    iget-object v1, v1, Lj11;->b:Ljava/util/HashSet;

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk11;

    .line 9
    invoke-virtual {v1, p1}, Lk11;->a(Lk21;)V

    goto :goto_0

    :cond_0
    return-void
.end method
