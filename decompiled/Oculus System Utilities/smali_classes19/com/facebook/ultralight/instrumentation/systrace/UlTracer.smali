.class public Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;
.super Ljava/lang/Object;
.source "UlTracer.java"


# static fields
.field private static final DISABLE_DI_FLAG:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->DISABLE_DI_FLAG:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beginSection(Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 109
    const-wide v0, 0x2000000000L

    invoke-static {v0, v1, p0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 110
    return-void
.end method

.method private static endSection()V
    .locals 2

    .prologue
    .line 113
    const-wide v0, 0x2000000000L

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 114
    return-void
.end method

.method public static isTracing()Z
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->safeGetDisableDiFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/facebook/ultralight/instrumentation/systrace/ForbiddenInjectionException;

    const-string v1, "Attempting to inject an object while it is forbidden"

    invoke-direct {v0, v1}, Lcom/facebook/ultralight/instrumentation/systrace/ForbiddenInjectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-static {}, Lcom/facebook/testenv/TestEnvironment;->isTest()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v0, 0x2000000000L

    .line 84
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static safeGetDisableDiFlag()Z
    .locals 2

    .prologue
    .line 117
    sget-object v1, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->DISABLE_DI_FLAG:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 118
    .local v0, "disableDi":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 121
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static setDisableDiFlag(Z)V
    .locals 2
    .param p0, "disableDiFlag"    # Z

    .prologue
    .line 105
    sget-object v0, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->DISABLE_DI_FLAG:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public static startTracer(Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UL_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->beginSection(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static startTracer(Ljava/lang/String;I)V
    .locals 2
    .param p0, "methodTag"    # Ljava/lang/String;
    .param p1, "key"    # I

    .prologue
    .line 56
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UL_"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->beginSection(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public static startTracer(Ljava/lang/String;Lcom/google/inject/Key;)V
    .locals 2
    .param p0, "methodTag"    # Ljava/lang/String;
    .param p1, "key"    # Lcom/google/inject/Key;

    .prologue
    .line 32
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UL_"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->beginSection(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static startTracer(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p0, "methodTag"    # Ljava/lang/String;
    .param p1, "classToAddToTag"    # Ljava/lang/Class;

    .prologue
    .line 20
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UL_"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->beginSection(Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method

.method public static startTracer(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 2
    .param p0, "methodTag"    # Ljava/lang/String;
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/inject/Binding;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/inject/Binding;>;"
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Binding;

    .line 47
    .local v0, "binding":Lcom/facebook/inject/Binding;
    if-nez v0, :cond_1

    .line 53
    .end local v0    # "binding":Lcom/facebook/inject/Binding;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0    # "binding":Lcom/facebook/inject/Binding;
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;Lcom/google/inject/Key;)V

    goto :goto_0
.end method

.method public static stopTracer()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->endSection()V

    .line 77
    :cond_0
    return-void
.end method
