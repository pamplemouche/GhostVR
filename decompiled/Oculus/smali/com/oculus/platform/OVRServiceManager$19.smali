.class Lcom/oculus/platform/OVRServiceManager$19;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->shareMediaToFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$defaultComment:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$messageType:I

.field final synthetic val$requestID:J

.field final synthetic val$returnComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$19;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    iput-object p4, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$returnComponent:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$defaultComment:Ljava/lang/String;

    iput-object p6, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$contentType:Ljava/lang/String;

    iput p7, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$messageType:I

    iput-wide p8, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$requestID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$19;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$800(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    .line 1170
    :goto_0
    return-void

    .line 1117
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1118
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is too large to share: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$19;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$800(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    goto :goto_0

    .line 1124
    :cond_1
    new-instance v0, Lcom/oculus/platform/SharedMemoryJNIReturnValues;

    invoke-direct {v0}, Lcom/oculus/platform/SharedMemoryJNIReturnValues;-><init>()V

    .line 1125
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$filePath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/oculus/platform/OVR;->nativeWriteFileToSharedMemory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1126
    iget v1, v0, Lcom/oculus/platform/SharedMemoryJNIReturnValues;->fd:I

    .line 1127
    iget v0, v0, Lcom/oculus/platform/SharedMemoryJNIReturnValues;->size:I

    .line 1128
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got file descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-nez v0, :cond_3

    .line 1130
    :cond_2
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$19;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$800(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    goto :goto_0

    .line 1135
    :cond_3
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1136
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$19;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v2, v2, Lcom/oculus/platform/OVRServiceManager;->mOVRShareServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1137
    invoke-virtual {v2}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v2

    .line 1138
    iget-object v3, v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v3, :cond_4

    .line 1139
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got result.bindError"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$19;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v0}, Lcom/oculus/platform/OVRServiceManager;->access$400(Lcom/oculus/platform/OVRServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    iget-object v2, v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    goto/16 :goto_0

    .line 1143
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1145
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1146
    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$filePath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1147
    const-string v4, "fileName"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1148
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1150
    :try_start_0
    iget-object v1, v2, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$19;->this$0:Lcom/oculus/platform/OVRServiceManager;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "/system_utilities/share_modal/"

    .line 1160
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$returnComponent:Landroid/content/ComponentName;

    .line 1161
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "sdk_deeplink"

    .line 1162
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "defaultComment"

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$defaultComment:Ljava/lang/String;

    .line 1163
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "contentType"

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$contentType:Ljava/lang/String;

    .line 1164
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "returnUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apk://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$returnComponent:Landroid/content/ComponentName;

    .line 1165
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$messageType:I

    iget-wide v4, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$requestID:J

    iget-object v6, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$returnComponent:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    .line 1158
    invoke-static/range {v1 .. v7}, Lcom/oculus/platform/OVRServiceManager;->access$900(Lcom/oculus/platform/OVRServiceManager;Landroid/net/Uri$Builder;IJLandroid/content/ComponentName;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;)V

    goto/16 :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$19;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$19;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$800(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Lcom/oculus/platform/util/OVRError;)V

    goto/16 :goto_0
.end method
