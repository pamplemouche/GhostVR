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
.field public static final ADD_INSTRUMENTATION_LISTENER_METHOD_NAME:Ljava/lang/String; = "addInstrumentationListener"

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
    .locals 12
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "info"    # Lcom/facebook/common/instrumentation/InstrumentationInfo;
    .param p2, "givenLogger"    # Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 40
    if-nez p0, :cond_1

    move-object v4, v5

    .line 83
    :cond_0
    :goto_0
    return-object v4

    .line 44
    :cond_1
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 46
    .local v2, "logger":Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->isClassEligibleToTransform(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 48
    const-string v6, "Class %s is not eligible for instrumentation"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;)V

    move-object v4, v5

    .line 49
    goto :goto_0

    .line 44
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "logger":Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;
    :cond_2
    sget-object v2, Lcom/facebook/common/instrumentation/InstrumentationHelper;->DEFAULT_LOGGER:Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;

    goto :goto_1

    .line 52
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "logger":Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;
    :cond_3
    invoke-static {v0, v2}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->getAddInstrumentationListenerMethod(Ljava/lang/Class;Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 53
    .local v3, "method":Ljava/lang/reflect/Method;
    if-nez v3, :cond_4

    move-object v4, v5

    .line 54
    goto :goto_0

    .line 57
    :cond_4
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 58
    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;

    .line 60
    .local v4, "retListener":Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;
    const-string v6, "Added AddInstrumentationListener method for class %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-interface {v2, v6}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;)V

    .line 64
    if-nez v4, :cond_0

    .line 65
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "We currently do not support multiple collectors inflight"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v4    # "retListener":Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 71
    const-string v6, "Cannot call AddInstrumentationListener method for class %s. Cause:"

    new-array v7, v11, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 72
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 71
    invoke-interface {v2, v6, v7}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_5
    const-string v6, "Cannot call AddInstrumentationListener method for class %s. Top Level:"

    new-array v7, v11, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 78
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-interface {v2, v6, v1}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 83
    goto/16 :goto_0
.end method

.method private static getAddInstrumentationListenerMethod(Ljava/lang/Class;Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "logger"    # Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;
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
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->getAddInstrumentationListenerMethodNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/facebook/common/instrumentation/InstrumentationInfo;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Cannot get method %s for class %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-interface {p1, v2, v0}, Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAddInstrumentationListenerMethodNameForClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "addInstrumentationListener"

    invoke-static {v0, p0}, Lcom/facebook/common/instrumentation/InstrumentationHelper;->makeUniqueMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isClassEligibleToTransform(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static makeUniqueMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "originalMethodName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x5f

    .line 106
    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "transformedName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_UNIQUE_NAME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
