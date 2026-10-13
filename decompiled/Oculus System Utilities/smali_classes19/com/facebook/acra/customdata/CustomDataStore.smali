.class public interface abstract Lcom/facebook/acra/customdata/CustomDataStore;
.super Ljava/lang/Object;
.source "CustomDataStore.java"


# virtual methods
.method public abstract containsKey(Ljava/lang/String;)Z
.end method

.method public abstract getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSnapshot()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeCustomData(Ljava/lang/String;)V
.end method

.method public varargs abstract setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
