.class interface abstract Lcom/facebook/analytics2/logger/UploadBatchNotifier;
.super Ljava/lang/Object;
.source "UploadBatchNotifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract notifyBatchReady()V
.end method

.method public abstract notifyEventLogged()V
.end method

.method public abstract notifyUserLogout(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setLastNotifiedObject(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
