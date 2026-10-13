.class public interface abstract Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Methods;
.super Ljava/lang/Object;
.source "VideoUploaderMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Methods"
.end annotation


# virtual methods
.method public abstract videoUploadStart(Ljava/lang/String;JLjava/lang/String;I)Lcom/oculus/horizon/abuse_prevention/VideoUploadStartResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "file_name"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit/http/Field;
            value = "file_size"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "mime_type"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit/http/Field;
            value = "chunk_size"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/video_upload_start"
    .end annotation
.end method

.method public abstract videoUploadSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/abuse_prevention/VideoUploadSubmitResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "target_object_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "video_type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "upload_session_id"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/video_upload_submit"
    .end annotation
.end method

.method public abstract videoUploadTransfer(Ljava/lang/String;JLcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;)Lcom/oculus/horizon/abuse_prevention/VideoUploadTransferResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "upload_session_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit/http/Part;
            value = "start_offset"
        .end annotation
    .end param
    .param p4    # Lcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;
        .annotation runtime Lretrofit/http/Part;
            value = "chunk"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/video_upload_transfer"
    .end annotation
.end method
