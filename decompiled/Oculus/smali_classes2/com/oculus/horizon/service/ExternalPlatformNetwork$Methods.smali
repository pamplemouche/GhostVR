.class interface abstract Lcom/oculus/horizon/service/ExternalPlatformNetwork$Methods;
.super Ljava/lang/Object;
.source "ExternalPlatformNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/ExternalPlatformNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getAppScopedToken(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/api/platformsdk/TokenResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "app_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "push_token"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/authenticate_application"
    .end annotation
.end method
