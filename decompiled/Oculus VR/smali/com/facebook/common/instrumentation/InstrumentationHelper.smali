.class public final Lcom/facebook/common/instrumentation/InstrumentationHelper;
.super Ljava/lang/Object;
.source "InstrumentationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGGER:Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/common/instrumentation/InstrumentationHelper$1;

    invoke-direct {v0}, Lcom/facebook/common/instrumentation/InstrumentationHelper$1;-><init>()V

    sput-object v0, Lcom/facebook/common/instrumentation/InstrumentationHelper;->DEFAULT_LOGGER:Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInstrumentationListenerToClassIfCan(Ljava/lang/Object;Lcom/facebook/common/instrumentation/InstrumentationInfo;Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;)Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;
    .locals 9
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 40
    if-nez p0, :cond_1

    move-object v0, v1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    if-eqz p2, :cond_2

    .line 46
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->isClassEligibleToTransform(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 48
    const-string v0, "Class %s is not eligible for instrumentation"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 49
    goto :goto_0

    .line 44
    :cond_2
    sget-object p2, Lcom/facebook/common/instrumentation/InstrumentationHelper;->DEFAULT_LOGGER:Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;

    goto :goto_1

    .line 52
    :cond_3
    invoke-static {v2, p2}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->getAddInstrumentationListenerMethod(Ljava/lang/Class;Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    if-nez v0, :cond_4

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 57
    :cond_4
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 58
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;

    .line 60
    const-string v3, "Added AddInstrumentationListener method for class %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-interface {p2, v3}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;)V

    .line 64
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "We currently do not support multiple collectors inflight"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 71
    const-string v3, "Cannot call AddInstrumentationListener method for class %s. Cause:"

    new-array v4, v8, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 72
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 71
    invoke-interface {p2, v3, v4}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_5
    const-string v3, "Cannot call AddInstrumentationListener method for class %s. Top Level:"

    new-array v4, v8, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 78
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-interface {p2, v2, v0}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 83
    goto/16 :goto_0
.end method

.method private static getAddInstrumentationListenerMethod(Ljava/lang/Class;Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->getAddInstrumentationListenerMethodNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/facebook/common/instrumentation/InstrumentationInfo;

    aput-object v3, v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v2, "Cannot get method %s for class %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-interface {p1, v1, v0}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAddInstrumentationListenerMethodNameForClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "addInstrumentationListener"

    invoke-static {v0, p0}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->makeUniqueMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isClassEligibleToTransform(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 113
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static makeUniqueMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5f

    .line 106
    const/16 v0, 0x2e

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_UNIQUE_NAME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
