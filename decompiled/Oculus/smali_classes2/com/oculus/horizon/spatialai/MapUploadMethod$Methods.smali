.class interface abstract Lcom/oculus/horizon/spatialai/MapUploadMethod$Methods;
.super Ljava/lang/Object;
.source "MapUploadMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spatialai/MapUploadMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Methods"
.end annotation


# virtual methods
.method public abstract sendMapData(Ljava/lang/String;Ljava/lang/String;Lretrofit/mime/TypedFile;)Lcom/oculus/horizon/spatialai/MapUploadResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "variables"
        .end annotation
    .end param
    .param p3    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "cloud_file"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method
