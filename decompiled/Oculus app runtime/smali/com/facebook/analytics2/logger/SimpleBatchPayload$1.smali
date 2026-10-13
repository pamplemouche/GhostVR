.class final Lcom/facebook/analytics2/logger/SimpleBatchPayload$1;
.super Ljava/lang/ThreadLocal;
.source "SimpleBatchPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/SimpleBatchPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/SimpleBatchPayload$1;->initialValue()[B

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[B
    .locals 1

    const/16 v0, 0x800

    .line 28
    new-array v0, v0, [B

    return-object v0
.end method
