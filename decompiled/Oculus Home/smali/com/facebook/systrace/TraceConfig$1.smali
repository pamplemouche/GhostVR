.class final Lcom/facebook/systrace/TraceConfig$1;
.super Ljava/lang/Object;
.source "TraceConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/systrace/TraceConfig;->staticInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/systrace/TraceConfig;->access$000(Z)V

    .line 30
    return-void
.end method
