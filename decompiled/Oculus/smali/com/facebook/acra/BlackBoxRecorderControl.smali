.class public interface abstract Lcom/facebook/acra/BlackBoxRecorderControl;
.super Ljava/lang/Object;
.source "BlackBoxRecorderControl.java"


# static fields
.field public static final JAVA_CRASH:I = 0x1


# virtual methods
.method public abstract awaitForBlackBoxTraceCompletion(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract captureBlackBoxTrace(Ljava/util/Map;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
