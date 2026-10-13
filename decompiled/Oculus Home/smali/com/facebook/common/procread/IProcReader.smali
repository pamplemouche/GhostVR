.class interface abstract Lcom/facebook/common/procread/IProcReader;
.super Ljava/lang/Object;
.source "IProcReader.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
    .param p5    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
    .param p3    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)Z
.end method
