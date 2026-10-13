.class interface abstract Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIMethods$Methods;
.super Ljava/lang/Object;
.source "DropboxAPIMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Methods"
.end annotation


# virtual methods
.method public abstract revokeAccessToken(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/auth/token/revoke"
    .end annotation
.end method
