.class public LOS0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:LMS0;


# direct methods
.method public synthetic constructor <init>(LHS0;LGS0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p2, p1, LHS0;->a:I

    .line 3
    iput p2, p0, LOS0;->a:I

    .line 4
    iget-object p2, p1, LHS0;->b:Landroid/os/Bundle;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p2, p0, LOS0;->b:Landroid/os/Bundle;

    .line 6
    iget p2, p1, LHS0;->c:I

    .line 7
    iput p2, p0, LOS0;->c:I

    .line 8
    iget-boolean p2, p1, LHS0;->d:Z

    .line 9
    iput-boolean p2, p0, LOS0;->d:Z

    .line 10
    iget-boolean p2, p1, LHS0;->e:Z

    .line 11
    iput-boolean p2, p0, LOS0;->e:Z

    .line 12
    iget-boolean p2, p1, LHS0;->f:Z

    .line 13
    iput-boolean p2, p0, LOS0;->f:Z

    .line 14
    iget-object p1, p1, LHS0;->g:LMS0;

    .line 15
    iput-object p1, p0, LOS0;->g:LMS0;

    return-void
.end method

.method public static a(IJJ)LHS0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, LIS0;

    invoke-direct {v0}, LIS0;-><init>()V

    .line 2
    iput-wide p1, v0, LIS0;->a:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, LIS0;->c:Z

    .line 4
    iput-wide p3, v0, LIS0;->b:J

    .line 5
    invoke-virtual {v0}, LIS0;->a()LJS0;

    move-result-object p1

    .line 6
    new-instance p2, LHS0;

    invoke-direct {p2, p0}, LHS0;-><init>(I)V

    .line 7
    iput-object p1, p2, LHS0;->g:LMS0;

    return-object p2
.end method

.method public static b(IJJ)LHS0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, LKS0;

    invoke-direct {v0}, LKS0;-><init>()V

    .line 2
    iput-wide p1, v0, LKS0;->a:J

    .line 3
    iput-wide p3, v0, LKS0;->b:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, LKS0;->c:Z

    .line 5
    new-instance p1, LLS0;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, LLS0;-><init>(LKS0;LGS0;)V

    .line 6
    new-instance p2, LHS0;

    invoke-direct {p2, p0}, LHS0;-><init>(I)V

    .line 7
    iput-object p1, p2, LHS0;->g:LMS0;

    return-object p2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "{"

    const-string v1, "taskId: "

    .line 1
    invoke-static {v0, v1}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, LOS0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOS0;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requiredNetworkType: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LOS0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requiresCharging: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LOS0;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPersisted: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LOS0;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateCurrent: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LOS0;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timingInfo: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOS0;->g:LMS0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
