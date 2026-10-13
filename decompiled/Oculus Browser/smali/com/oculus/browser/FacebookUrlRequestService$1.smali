.class public Lcom/oculus/browser/FacebookUrlRequestService$1;
.super LkW;
.source "PG"


# instance fields
.field public exceptionToBeThrown:Ljava/lang/Exception;

.field public response:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oculus/browser/FacebookUrlRequestService;

.field public final synthetic val$postBody:Ljava/lang/String;

.field public final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/FacebookUrlRequestService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->this$0:Lcom/oculus/browser/FacebookUrlRequestService;

    iput-object p2, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->val$urlString:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->val$postBody:Ljava/lang/String;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/FacebookUrlRequestService$1;->doInBackground()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->this$0:Lcom/oculus/browser/FacebookUrlRequestService;

    iget-object v3, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->val$postBody:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/oculus/browser/FacebookUrlRequestService;->access$000(Lcom/oculus/browser/FacebookUrlRequestService;Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->this$0:Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-static {v2, v1}, Lcom/oculus/browser/FacebookUrlRequestService;->access$100(Lcom/oculus/browser/FacebookUrlRequestService;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->this$0:Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-static {v3, v2}, Lcom/oculus/browser/FacebookUrlRequestService;->access$200(Lcom/oculus/browser/FacebookUrlRequestService;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->response:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 7
    iget-object v0, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->response:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string v3, "FacebookUrlRequestService"

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Facebook service call failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput-object v2, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->exceptionToBeThrown:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v0

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oculus/browser/FacebookUrlRequestService$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->exceptionToBeThrown:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->this$0:Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-static {v0}, Lcom/oculus/browser/FacebookUrlRequestService;->access$300(Lcom/oculus/browser/FacebookUrlRequestService;)Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->this$0:Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-static {p1}, Lcom/oculus/browser/FacebookUrlRequestService;->access$300(Lcom/oculus/browser/FacebookUrlRequestService;)Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->exceptionToBeThrown:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;->onRequestException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->this$0:Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-static {v0}, Lcom/oculus/browser/FacebookUrlRequestService;->access$300(Lcom/oculus/browser/FacebookUrlRequestService;)Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/oculus/browser/FacebookUrlRequestService$1;->this$0:Lcom/oculus/browser/FacebookUrlRequestService;

    invoke-static {v0}, Lcom/oculus/browser/FacebookUrlRequestService;->access$300(Lcom/oculus/browser/FacebookUrlRequestService;)Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/browser/FacebookUrlRequestServiceDelegate;->onDataReceived(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
