.class interface abstract Lcom/oculus/library/sync/LibrarySyncMethods$Methods;
.super Ljava/lang/Object;
.source "LibrarySyncMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/sync/LibrarySyncMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Methods"
.end annotation


# virtual methods
.method public abstract syncLibrary(Ljava/lang/String;Lcom/oculus/library/sync/LibrarySyncMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/library/sync/LibrarySyncMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "variables"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/library/sync/LibrarySyncMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/library/sync/LibrarySyncMutationResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method
