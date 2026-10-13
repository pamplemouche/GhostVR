.class public Lcom/oculus/browser/WebUIFetcher;
.super Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "WebUIFetcher"


# instance fields
.field public mResponseCallback:Lcom/oculus/browser/WebUIFetcher$FetcherCallback;

.field public mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/FacebookUrlRequestService;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/browser/WebUIFetcher$FetcherCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/oculus/browser/WebUIFetcher;->mResponseCallback:Lcom/oculus/browser/WebUIFetcher$FetcherCallback;

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/WebUIFetcher;->mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

    .line 4
    invoke-virtual {p1, p0}, Lcom/oculus/browser/FacebookUrlRequestService;->setDelegate(Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;)V

    .line 5
    iget-object p1, p0, Lcom/oculus/browser/WebUIFetcher;->mUrlRequestService:Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-virtual {p1, p2, p3}, Lcom/oculus/browser/FacebookUrlRequestService;->makeAsyncHttpRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fetch(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    new-instance v0, Lcom/oculus/browser/WebUIFetcher;

    new-instance v1, Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-direct {v1}, Lcom/oculus/browser/FacebookUrlRequestService;-><init>()V

    new-instance v2, Lcom/oculus/browser/WebUIFetcher$$Lambda$0;

    invoke-direct {v2, p2}, Lcom/oculus/browser/WebUIFetcher$$Lambda$0;-><init>(I)V

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/oculus/browser/WebUIFetcher;-><init>(Lcom/oculus/browser/FacebookUrlRequestService;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/browser/WebUIFetcher$FetcherCallback;)V

    return-void
.end method

.method public static final synthetic lambda$fetch$0$WebUIFetcher(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Lcom/oculus/browser/WebUIFetcher;->nativeResponse(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static native nativeResponse(Ljava/lang/String;Ljava/lang/String;I)V
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/WebUIFetcher;->mResponseCallback:Lcom/oculus/browser/WebUIFetcher$FetcherCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oculus/browser/WebUIFetcher$FetcherCallback;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestException(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/WebUIFetcher;->mResponseCallback:Lcom/oculus/browser/WebUIFetcher$FetcherCallback;

    const-string v1, "Facebook service call failed: "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/oculus/browser/WebUIFetcher$FetcherCallback;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
