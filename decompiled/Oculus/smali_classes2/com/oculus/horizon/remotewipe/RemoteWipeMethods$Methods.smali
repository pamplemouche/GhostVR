.class interface abstract Lcom/oculus/horizon/remotewipe/RemoteWipeMethods$Methods;
.super Ljava/lang/Object;
.source "RemoteWipeMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/remotewipe/RemoteWipeMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getDeviceManifestWipeStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/remotewipe/DeviceManifestWipeStatusResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract sendCompleted(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lretrofit/client/Response;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "device_serial"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit/http/Query;
            value = "failed"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "failureReason"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/device_remote_wipe_completed"
    .end annotation
.end method
