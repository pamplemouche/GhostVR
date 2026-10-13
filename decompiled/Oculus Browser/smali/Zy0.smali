.class public final synthetic LZy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lbz0;


# direct methods
.method public constructor <init>(Lbz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZy0;->w:Lbz0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, LZy0;->w:Lbz0;

    .line 1
    iget-object v1, v0, Lbz0;->m0:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    iget-object v2, v0, Lbz0;->m0:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-wide v4, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 5
    invoke-static {v4, v5, v1, v2}, LJ/N;->MIAwuIe5(JLjava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, LNv0;->a()LNv0;

    move-result-object v1

    iget-object v0, v0, Lbz0;->m0:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7
    sget-object v2, LNv0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMv0;

    .line 8
    sget-object v4, LZ01;->a:LFW;

    new-instance v5, LJv0;

    invoke-direct {v5, v1, v3, v0}, LJv0;-><init>(LNv0;LMv0;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    .line 9
    invoke-static {v4, v5, v6, v7}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 10
    :cond_0
    throw v3

    .line 11
    :cond_1
    throw v3

    :cond_2
    return-void
.end method
