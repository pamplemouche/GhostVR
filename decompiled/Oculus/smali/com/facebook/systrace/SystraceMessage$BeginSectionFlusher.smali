.class Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;
.super Ljava/lang/Object;
.source "SystraceMessage.java"

# interfaces
.implements Lcom/facebook/systrace/SystraceMessage$Flusher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/systrace/SystraceMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BeginSectionFlusher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/systrace/SystraceMessage$1;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/facebook/systrace/SystraceMessage$BeginSectionFlusher;-><init>()V

    return-void
.end method


# virtual methods
.method public flush(JLjava/lang/String;Lcom/facebook/systrace/SystraceMessage$ArgsList;)V
    .locals 3

    .prologue
    .line 188
    invoke-static {p1, p2}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p4}, Lcom/facebook/systrace/SystraceMessage$ArgsList;->access$400(Lcom/facebook/systrace/SystraceMessage$ArgsList;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/facebook/systrace/SystraceMessage$ArgsList;->access$500(Lcom/facebook/systrace/SystraceMessage$ArgsList;)I

    move-result v1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;[Ljava/lang/String;I)V

    .line 191
    :cond_0
    return-void
.end method
