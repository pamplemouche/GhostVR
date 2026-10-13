.class public LJS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMS0;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Z


# direct methods
.method public synthetic constructor <init>(LIS0;LGS0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, LIS0;->a:J

    .line 3
    iput-wide v0, p0, LJS0;->a:J

    .line 4
    iget-wide v0, p1, LIS0;->b:J

    .line 5
    iput-wide v0, p0, LJS0;->b:J

    .line 6
    iget-boolean p2, p1, LIS0;->c:Z

    .line 7
    iput-boolean p2, p0, LJS0;->c:Z

    .line 8
    iget-boolean p1, p1, LIS0;->d:Z

    .line 9
    iput-boolean p1, p0, LJS0;->d:Z

    return-void
.end method


# virtual methods
.method public a(LNS0;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, LNS0;->a(LJS0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, LJS0;->c:Z

    const-string v2, ", "

    if-eqz v1, :cond_0

    const-string v1, "windowStartTimeMs: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, LJS0;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "windowEndTimeMs: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, LJS0;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expiresAfterWindowEndTime (+flex): "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LJS0;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
