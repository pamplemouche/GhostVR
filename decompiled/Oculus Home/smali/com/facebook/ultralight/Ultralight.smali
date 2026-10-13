.class public Lcom/facebook/ultralight/Ultralight;
.super Ljava/lang/Object;
.source "Ultralight.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/infer/annotation/Assertions;->assertUnreachable()Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method
