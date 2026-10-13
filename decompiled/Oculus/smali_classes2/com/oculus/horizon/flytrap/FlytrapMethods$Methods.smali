.class interface abstract Lcom/oculus/horizon/flytrap/FlytrapMethods$Methods;
.super Ljava/lang/Object;
.source "FlytrapMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/flytrap/FlytrapMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Methods"
.end annotation


# virtual methods
.method public abstract sendFlytrapBugReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedFile;Lretrofit/mime/TypedFile;Lretrofit/mime/TypedFile;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "app_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "access_token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "user_identifier"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "client_time"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "config_id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "locale"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "metadata"
        .end annotation
    .end param
    .param p8    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "screenshot"
        .end annotation
    .end param
    .param p9    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "logcat"
        .end annotation
    .end param
    .param p10    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "stack_dump"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/mime/TypedFile;",
            "Lretrofit/mime/TypedFile;",
            "Lretrofit/mime/TypedFile;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/api/flytrap/FlytrapResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/{app_id}/bugs"
    .end annotation
.end method
