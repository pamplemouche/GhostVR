.class public final synthetic LHg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LUg0;

.field public final x:LCg0;


# direct methods
.method public constructor <init>(LUg0;LCg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHg0;->w:LUg0;

    iput-object p2, p0, LHg0;->x:LCg0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LHg0;->w:LUg0;

    iget-object v1, p0, LHg0;->x:LCg0;

    if-eqz v0, :cond_4

    .line 1
    invoke-interface {v1}, LCg0;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-boolean v2, v0, LUg0;->e:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, LFe1;->b()LFe1;

    move-result-object v2

    sget-object v3, LZ01;->e:LFW;

    .line 5
    iput-object v3, v2, LFe1;->b:LFW;

    .line 6
    invoke-static {}, LFe1;->b()LFe1;

    move-result-object v2

    .line 7
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f130267

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Lorg/chromium/base/LocaleUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, v2, LFe1;->a:LEe1;

    if-eqz v4, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, LFe1;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    new-instance v4, LEe1;

    invoke-direct {v4, v2, v3}, LEe1;-><init>(LFe1;Ljava/lang/String;)V

    iput-object v4, v2, LFe1;->a:LEe1;

    .line 13
    sget-object v2, LFW;->m:LFW;

    const-wide/16 v5, 0x0

    .line 14
    invoke-static {v2, v4, v5, v6}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_0
    const/4 v2, 0x1

    .line 15
    iput-boolean v2, v0, LUg0;->e:Z

    .line 16
    :goto_1
    invoke-interface {v1}, LCg0;->w()V

    :goto_2
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 17
    throw v0
.end method
