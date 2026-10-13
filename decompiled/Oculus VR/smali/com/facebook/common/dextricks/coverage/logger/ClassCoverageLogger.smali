.class public Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;
.super Ljava/lang/Object;
.source "ClassCoverageLogger.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static volatile ENABLED:Z

.field private static final LOADED_CLASSES:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile THROW_ON_LOADED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;

    sput-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->TAG:Ljava/lang/Class;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->LOADED_CLASSES:Ljava/util/Queue;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->ENABLED:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    .line 27
    const-string v0, "true"

    const-string v1, "fb.enable_class_coverage"

    invoke-static {v1}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->ENABLED:Z

    .line 28
    sget-boolean v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->TAG:Ljava/lang/Class;

    const-string v1, "Class coverage logger is enabled"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 31
    :cond_0
    const-string v0, "fb.throw_on_class_load"

    .line 32
    invoke-static {v0}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->TAG:Ljava/lang/Class;

    const-string v1, "Load failure enabled for: %s"

    sget-object v2, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkThrowOnLoad(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class load disallowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static classLoaded(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->checkThrowOnLoad(Ljava/lang/Class;)V

    .line 49
    sget-boolean v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->LOADED_CLASSES:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-void
.end method
