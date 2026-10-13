.class public final synthetic LKo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LMo0;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(LMo0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKo0;->a:LMo0;

    iput p2, p0, LKo0;->b:I

    iput p3, p0, LKo0;->c:I

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, LKo0;->a:LMo0;

    iget v1, p0, LKo0;->b:I

    iget v2, p0, LKo0;->c:I

    check-cast p1, LIo0;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    new-instance v6, LVU;

    const-string v7, "GoogleUpdate.StartingUpdateState"

    invoke-direct {v6, v7}, LVU;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v6, p1}, LVU;->a(Z)V

    .line 3
    sget-object p1, LIo0;->F:LIo0;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LFo0;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    invoke-virtual {p1}, LFF;->g()V

    .line 6
    iget-object v8, p1, LFF;->x:LTF;

    check-cast v8, LIo0;

    .line 7
    iget v9, v8, LIo0;->z:I

    or-int/2addr v9, v4

    iput v9, v8, LIo0;->z:I

    .line 8
    iput-wide v6, v8, LIo0;->A:J

    .line 9
    invoke-virtual {p1}, LFF;->g()V

    .line 10
    iget-object v6, p1, LFF;->x:LTF;

    check-cast v6, LIo0;

    .line 11
    iget v7, v6, LIo0;->z:I

    const/4 v8, 0x2

    or-int/2addr v7, v8

    iput v7, v6, LIo0;->z:I

    const-string v7, "79.0.3945.126"

    .line 12
    iput-object v7, v6, LIo0;->B:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    .line 13
    sget-object v1, LHo0;->x:LHo0;

    goto :goto_1

    .line 14
    :cond_1
    sget-object v1, LHo0;->z:LHo0;

    goto :goto_1

    .line 15
    :cond_2
    sget-object v1, LHo0;->y:LHo0;

    .line 16
    :goto_1
    invoke-virtual {p1}, LFF;->g()V

    .line 17
    iget-object v6, p1, LFF;->x:LTF;

    check-cast v6, LIo0;

    if-eqz v1, :cond_7

    .line 18
    iget v7, v6, LIo0;->z:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, LIo0;->z:I

    .line 19
    iget v1, v1, LHo0;->w:I

    .line 20
    iput v1, v6, LIo0;->C:I

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v8, :cond_3

    .line 21
    sget-object v1, LGo0;->x:LGo0;

    goto :goto_2

    .line 22
    :cond_3
    sget-object v1, LGo0;->A:LGo0;

    goto :goto_2

    .line 23
    :cond_4
    sget-object v1, LGo0;->z:LGo0;

    goto :goto_2

    .line 24
    :cond_5
    sget-object v1, LGo0;->y:LGo0;

    .line 25
    :goto_2
    invoke-virtual {p1}, LFF;->g()V

    .line 26
    iget-object v2, p1, LFF;->x:LTF;

    check-cast v2, LIo0;

    if-eqz v1, :cond_6

    .line 27
    iget v3, v2, LIo0;->z:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, LIo0;->z:I

    .line 28
    iget v1, v1, LGo0;->w:I

    .line 29
    iput v1, v2, LIo0;->D:I

    .line 30
    invoke-virtual {p1}, LFF;->g()V

    .line 31
    iget-object v1, p1, LFF;->x:LTF;

    check-cast v1, LIo0;

    .line 32
    iget v2, v1, LIo0;->z:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, LIo0;->z:I

    .line 33
    iput-boolean v5, v1, LIo0;->E:Z

    .line 34
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LIo0;

    .line 35
    iget-object v0, v0, LMo0;->a:LDo0;

    .line 36
    iget-object v0, v0, LDo0;->a:LCW;

    new-instance v1, LBo0;

    invoke-direct {v1, p1}, LBo0;-><init>(LIo0;)V

    invoke-interface {v0, v1}, LCW;->a(Ljava/lang/Runnable;)V

    return-void

    .line 37
    :cond_6
    throw v3

    .line 38
    :cond_7
    throw v3

    .line 39
    :cond_8
    throw v3
.end method
