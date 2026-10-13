.class public LFq;
.super LHq;
.source "PG"


# instance fields
.field public j:J

.field public k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LHq;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LFq;->j:J

    iput-wide v0, p0, LFq;->k:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LHq;->e:Z

    return-void
.end method


# virtual methods
.method public a(I)LHq;
    .locals 0

    .line 3
    iput p1, p0, LHq;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/Class;)LHq;
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LHq;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)LHq;
    .locals 0

    .line 5
    iput-object p1, p0, LHq;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)LHq;
    .locals 0

    .line 2
    iput-boolean p1, p0, LHq;->e:Z

    return-object p0
.end method

.method public a()Lcom/google/android/gms/gcm/Task;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFq;->b()V

    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(LFq;LOq;)V

    return-object v0
.end method

.method public b(Z)LHq;
    .locals 0

    .line 1
    iput-boolean p1, p0, LHq;->f:Z

    return-object p0
.end method

.method public b()V
    .locals 7

    invoke-super {p0}, LHq;->b()V

    iget-wide v0, p0, LFq;->j:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, LFq;->k:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window start must be shorter than window end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an execution window using setExecutionWindow."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Z)LHq;
    .locals 0

    .line 1
    iput-boolean p1, p0, LHq;->d:Z

    return-object p0
.end method
