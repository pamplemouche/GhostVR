.class public final Lcom/facebook/systrace/SystraceMessage;
.super Ljava/lang/Object;
.source "SystraceMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/systrace/SystraceMessage$EndSectionFlusher;,
        Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;,
        Lcom/facebook/systrace/SystraceMessage$ArgsList;,
        Lcom/facebook/systrace/SystraceMessage$RealBuilder;,
        Lcom/facebook/systrace/SystraceMessage$NoopBuilder;,
        Lcom/facebook/systrace/SystraceMessage$Flusher;,
        Lcom/facebook/systrace/SystraceMessage$Builder;
    }
.end annotation


# static fields
.field private static final BEGIN_SECTION_FLUSHER:Lcom/facebook/systrace/SystraceMessage$Flusher;

.field private static final END_SECTION_FLUSHER:Lcom/facebook/systrace/SystraceMessage$Flusher;

.field private static final NOOP_BUILDER:Lcom/facebook/systrace/SystraceMessage$Builder;

.field private static final THREAD_LOCAL_BUILDERS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/systrace/SystraceMessage$RealBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$NoopBuilder;

    invoke-direct {v0, v1}, Lcom/facebook/systrace/SystraceMessage$NoopBuilder;-><init>(Lcom/facebook/systrace/SystraceMessage$1;)V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->NOOP_BUILDER:Lcom/facebook/systrace/SystraceMessage$Builder;

    .line 15
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$1;

    invoke-direct {v0}, Lcom/facebook/systrace/SystraceMessage$1;-><init>()V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->THREAD_LOCAL_BUILDERS:Ljava/lang/ThreadLocal;

    .line 23
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;

    invoke-direct {v0, v1}, Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;-><init>(Lcom/facebook/systrace/SystraceMessage$1;)V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->BEGIN_SECTION_FLUSHER:Lcom/facebook/systrace/SystraceMessage$Flusher;

    .line 24
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$EndSectionFlusher;

    invoke-direct {v0, v1}, Lcom/facebook/systrace/SystraceMessage$EndSectionFlusher;-><init>(Lcom/facebook/systrace/SystraceMessage$1;)V

    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->END_SECTION_FLUSHER:Lcom/facebook/systrace/SystraceMessage$Flusher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2
    .param p0, "tag"    # J
    .param p2, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->BEGIN_SECTION_FLUSHER:Lcom/facebook/systrace/SystraceMessage$Flusher;

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/systrace/SystraceMessage;->getBuilder(JLcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static endSection(J)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2
    .param p0, "tag"    # J

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->END_SECTION_FLUSHER:Lcom/facebook/systrace/SystraceMessage$Flusher;

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/systrace/SystraceMessage;->getBuilder(JLcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static getBuilder(JLcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;
    .locals 2
    .param p0, "tag"    # J
    .param p2, "flusher"    # Lcom/facebook/systrace/SystraceMessage$Flusher;
    .param p3, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->NOOP_BUILDER:Lcom/facebook/systrace/SystraceMessage$Builder;

    .line 42
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->THREAD_LOCAL_BUILDERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/systrace/SystraceMessage$RealBuilder;->reset(JLcom/facebook/systrace/SystraceMessage$Flusher;Ljava/lang/String;)Lcom/facebook/systrace/SystraceMessage$RealBuilder;

    move-result-object v0

    goto :goto_0
.end method
