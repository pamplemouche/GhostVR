.class final Lcom/facebook/debug/tracer/Tracer$1;
.super Ljava/lang/ThreadLocal;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/debug/tracer/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/debug/tracer/Tracer$ThreadState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/facebook/debug/tracer/Tracer$ThreadState;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/debug/tracer/Tracer$ThreadState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/debug/tracer/Tracer$ThreadState;-><init>(Lcom/facebook/debug/tracer/Tracer$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/Tracer$1;->initialValue()Lcom/facebook/debug/tracer/Tracer$ThreadState;

    move-result-object v0

    return-object v0
.end method
