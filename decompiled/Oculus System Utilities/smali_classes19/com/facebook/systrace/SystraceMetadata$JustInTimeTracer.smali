.class Lcom/facebook/systrace/SystraceMetadata$JustInTimeTracer;
.super Ljava/lang/Object;
.source "SystraceMetadata.java"

# interfaces
.implements Lcom/facebook/systrace/TraceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/systrace/SystraceMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JustInTimeTracer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/systrace/SystraceMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/systrace/SystraceMetadata$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/systrace/SystraceMetadata$JustInTimeTracer;-><init>()V

    return-void
.end method


# virtual methods
.method public onTraceStarted()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->access$000()V

    .line 25
    return-void
.end method

.method public onTraceStopped()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->access$100()V

    .line 30
    return-void
.end method
