.class interface abstract Lcom/oculus/horizon/vrbugreporter/BugReporterMethods$Methods;
.super Ljava/lang/Object;
.source "BugReporterMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/vrbugreporter/BugReporterMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Methods"
.end annotation


# virtual methods
.method public abstract sendBugReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedFile;Lretrofit/mime/TypedFile;Lretrofit/mime/TypedFile;Lretrofit/mime/TypedFile;Lretrofit/mime/TypedFile;)Lretrofit/client/Response;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "app_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "category_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "session_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "description"
        .end annotation
    .end param
    .param p5    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "log"
        .end annotation
    .end param
    .param p6    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "screenshot"
        .end annotation
    .end param
    .param p7    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "audio_clip"
        .end annotation
    .end param
    .param p8    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "details"
        .end annotation
    .end param
    .param p9    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "packages"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/report_bug"
    .end annotation
.end method
