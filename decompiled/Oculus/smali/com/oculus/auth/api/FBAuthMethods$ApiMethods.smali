.class public interface abstract Lcom/oculus/auth/api/FBAuthMethods$ApiMethods;
.super Ljava/lang/Object;
.source "FBAuthMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/api/FBAuthMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiMethods"
.end annotation


# virtual methods
.method public abstract loginEndpoint(Ljava/util/HashMap;Lretrofit/Callback;)V
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/auth/api/FBLoginResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/method/auth.login"
    .end annotation
.end method
