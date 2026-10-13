.class public final synthetic LFU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LFU;->w:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, LFU;->w:Z

    .line 1
    invoke-static {}, LJ/N;->MdFgVRJJ()I

    move-result v1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LibraryPrefetcher.asyncPrefetchLibrariesToMemory"

    .line 3
    invoke-static {v3, v2}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v2

    if-eqz v0, :cond_0

    const/16 v3, 0x5a

    if-ge v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 4
    :try_start_0
    invoke-static {}, LJ/N;->MUjpxN8d()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LibraryLoader.PercentageOfResidentCodeBeforePrefetch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v0, ".ColdStartup"

    goto :goto_2

    :cond_2
    const-string v0, ".WarmStartup"

    .line 6
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0, v1}, LfV;->d(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 8
    :goto_3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_3

    .line 9
    :try_start_2
    iget-object v2, v2, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    .line 10
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v0, v2}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    :cond_3
    :goto_4
    throw v1

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 12
    iget-object v0, v2, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 13
    :cond_5
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "dont_prefetch_libraries"

    .line 14
    invoke-static {v0, v1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
