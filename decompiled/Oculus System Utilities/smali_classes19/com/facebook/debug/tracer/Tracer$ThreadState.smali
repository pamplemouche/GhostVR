.class Lcom/facebook/debug/tracer/Tracer$ThreadState;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/debug/tracer/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadState"
.end annotation


# instance fields
.field public stackOverflowDetected:Z

.field public final tracerStack:Lcom/facebook/debug/tracer/LongStack;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/facebook/debug/tracer/LongStack;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/facebook/debug/tracer/LongStack;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/debug/tracer/Tracer$ThreadState;->tracerStack:Lcom/facebook/debug/tracer/LongStack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/debug/tracer/Tracer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/debug/tracer/Tracer$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/debug/tracer/Tracer$ThreadState;-><init>()V

    return-void
.end method
