.class public final synthetic LDe1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LEe1;


# direct methods
.method public constructor <init>(LEe1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDe1;->w:LEe1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LDe1;->w:LEe1;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "ResourceExtractor.ExtractTask.onPostExecute"

    .line 1
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v2

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, v0, LEe1;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4
    iget-object v4, v0, LEe1;->w:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, LEe1;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v1, v2}, LEe1;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_2

    .line 8
    invoke-static {v0, v2}, LEe1;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_2
    throw v1

    .line 9
    :cond_3
    throw v1
.end method
