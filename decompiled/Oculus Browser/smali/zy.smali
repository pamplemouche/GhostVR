.class public final synthetic Lzy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LAy;

.field public final x:Z

.field public final y:J


# direct methods
.method public constructor <init>(LAy;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy;->w:LAy;

    iput-boolean p2, p0, Lzy;->x:Z

    iput-wide p3, p0, Lzy;->y:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lzy;->w:LAy;

    iget-boolean v1, p0, Lzy;->x:Z

    iget-wide v2, p0, Lzy;->y:J

    .line 1
    iget-object v0, v0, LAy;->a:LBy;

    .line 2
    iget-object v0, v0, LBy;->b:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lew;

    .line 4
    invoke-interface {v4, v1, v2, v3}, Lew;->a(ZJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
