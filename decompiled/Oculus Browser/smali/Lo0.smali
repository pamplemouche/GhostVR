.class public final synthetic LLo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LMo0;


# direct methods
.method public constructor <init>(LMo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLo0;->a:LMo0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, LLo0;->a:LMo0;

    check-cast p1, LIo0;

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iget-wide v3, p1, LIo0;->A:J

    sub-long/2addr v1, v3

    const-string v3, "InlineUpdateFlow"

    const-string v4, "update_attribution_window_days"

    .line 3
    invoke-static {v3, v4}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v5, 0x5265c00

    mul-long v3, v3, v5

    goto :goto_0

    :catch_0
    const-wide/32 v3, 0xa4cb800

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v2, p1, LIo0;->B:Ljava/lang/String;

    const-string v3, "79.0.3945.126"

    .line 6
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v5

    .line 7
    iget-boolean v3, p1, LIo0;->E:Z

    if-nez v3, :cond_2

    .line 8
    invoke-static {v6, p1, v2}, Lyo0;->a(ILIo0;Z)V

    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    .line 9
    :cond_3
    invoke-static {v5, p1, v2}, Lyo0;->a(ILIo0;Z)V

    :cond_4
    if-nez v2, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    iget-boolean v1, p1, LIo0;->E:Z

    if-nez v1, :cond_7

    .line 11
    iget-object v0, v0, LMo0;->a:LDo0;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LFo0;

    .line 12
    invoke-virtual {p1}, LFF;->g()V

    .line 13
    iget-object v1, p1, LFF;->x:LTF;

    check-cast v1, LIo0;

    .line 14
    iget v2, v1, LIo0;->z:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, LIo0;->z:I

    .line 15
    iput-boolean v5, v1, LIo0;->E:Z

    .line 16
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LIo0;

    .line 17
    iget-object v0, v0, LDo0;->a:LCW;

    new-instance v1, LBo0;

    invoke-direct {v1, p1}, LBo0;-><init>(LIo0;)V

    invoke-interface {v0, v1}, LCW;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 18
    :cond_6
    :goto_2
    iget-object p1, v0, LMo0;->a:LDo0;

    .line 19
    iget-object p1, p1, LDo0;->a:LCW;

    sget-object v0, LAo0;->w:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, LCW;->a(Ljava/lang/Runnable;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    const/4 p1, 0x0

    .line 20
    throw p1
.end method
