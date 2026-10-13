.class public final LAk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMm;


# instance fields
.field public final a:J

.field public final synthetic b:Ljk;


# direct methods
.method public constructor <init>(Ljk;J)V
    .locals 0

    .line 1
    iput-object p1, p0, LAk;->b:Ljk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, LAk;->a:J

    return-void
.end method


# virtual methods
.method public final synthetic a(LLm;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, LAk;->b:Ljk;

    iget-object v0, v0, Ljk;->c:Lok;

    .line 4
    iget-object v0, v0, Lok;->c:LKs;

    .line 5
    iget-wide v1, p0, LAk;->a:J

    .line 6
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->x:I

    .line 7
    iget-object v0, v0, Lns;->d:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQs;

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v3, v1, v2, p1, v4}, LQs;->a(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
