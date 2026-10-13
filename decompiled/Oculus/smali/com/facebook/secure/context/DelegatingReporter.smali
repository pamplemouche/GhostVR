.class public Lcom/facebook/secure/context/DelegatingReporter;
.super Ljava/lang/Object;
.source "DelegatingReporter.java"

# interfaces
.implements Lcom/facebook/secure/logger/Reporter;


# instance fields
.field private mReporter:Lcom/facebook/secure/logger/Reporter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/secure/logger/LocalReporter;

    invoke-direct {v0}, Lcom/facebook/secure/logger/LocalReporter;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/secure/context/DelegatingReporter;-><init>(Lcom/facebook/secure/logger/Reporter;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/facebook/secure/logger/Reporter;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/facebook/secure/context/DelegatingReporter;->setReporter(Lcom/facebook/secure/logger/Reporter;)V

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized getReporter()Lcom/facebook/secure/logger/Reporter;
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/DelegatingReporter;->mReporter:Lcom/facebook/secure/logger/Reporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public report(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/facebook/secure/context/DelegatingReporter;->getReporter()Lcom/facebook/secure/logger/Reporter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/facebook/secure/context/DelegatingReporter;->getReporter()Lcom/facebook/secure/logger/Reporter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method

.method public declared-synchronized setReporter(Lcom/facebook/secure/logger/Reporter;)V
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/secure/context/DelegatingReporter;->mReporter:Lcom/facebook/secure/logger/Reporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
