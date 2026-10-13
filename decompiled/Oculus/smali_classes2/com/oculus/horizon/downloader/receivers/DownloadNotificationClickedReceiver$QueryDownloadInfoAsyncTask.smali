.class Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;
.super Landroid/os/AsyncTask;
.source "DownloadNotificationClickedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryDownloadInfoAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickedDownloadIds:[J

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;Landroid/content/Context;[J)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->this$0:Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->mClickedDownloadIds:[J

    .line 70
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->mContext:Landroid/content/Context;

    const-string v1, "download"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 77
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 78
    iget-object v3, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->mClickedDownloadIds:[J

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    move-object v0, v2

    .line 105
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 87
    goto :goto_0

    .line 90
    :cond_1
    const-string v1, "description"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 92
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 97
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    const/4 v1, 0x0

    sget v4, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->this$0:Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;

    invoke-static {v5}, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->access$000(Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;)Lcom/facebook/inject/InjectionContext;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v1, v0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 105
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->this$0:Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;

    invoke-static {v0}, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;->access$100(Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/oculus/horizon/libraryui/LibraryFragment;

    invoke-static {v0, v1}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/oculus/horizon/downloader/receivers/DownloadNotificationClickedReceiver$QueryDownloadInfoAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
