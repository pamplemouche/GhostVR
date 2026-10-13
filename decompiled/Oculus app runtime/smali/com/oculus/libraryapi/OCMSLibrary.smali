.class public Lcom/oculus/libraryapi/OCMSLibrary;
.super Ljava/lang/Object;
.source "OCMSLibrary.java"

# interfaces
.implements Lcom/oculus/libraryapi/LibraryProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "OCMSLibrary"


# instance fields
.field private final mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/oculus/library/utils/app/AppConverter;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    return-void
.end method

.method private prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 260
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 263
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)Z
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->providerUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "cancel_download_package"

    const/4 v3, 0x0

    .line 219
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "extra_cancel_result"

    .line 225
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V
    .locals 2

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_0

    .line 151
    new-instance v1, Lcom/oculus/library/model/InstallCallbackReceiver;

    invoke-direct {v1, p4}, Lcom/oculus/library/model/InstallCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallCallback;)V

    .line 153
    invoke-virtual {v1}, Lcom/oculus/library/model/InstallCallbackReceiver;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/oculus/libraryapi/OCMSLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p4

    const-string v1, "result_receiver"

    .line 151
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 156
    invoke-virtual {p3}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object p3

    const-string p4, "extra_request_origin"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p3, "extra_update_config_apk"

    .line 158
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_2

    const-string p1, "extra_update_config_obb"

    .line 160
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 166
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->providerUri()Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    const-string p4, "install_custom_package"

    .line 165
    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V
    .locals 2

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 103
    new-instance v1, Lcom/oculus/library/model/InstallCallbackReceiver;

    invoke-direct {v1, p3}, Lcom/oculus/library/model/InstallCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallCallback;)V

    .line 106
    invoke-virtual {v1}, Lcom/oculus/library/model/InstallCallbackReceiver;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/oculus/libraryapi/OCMSLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p3

    const-string v1, "result_receiver"

    .line 104
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "extra_request_origin"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    iget-object p2, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 114
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->providerUri()Landroid/net/Uri;

    move-result-object p3

    const-string v1, "install_package"

    .line 113
    invoke-virtual {p2, p3, v1, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallResult;
    .locals 3

    const/4 v0, 0x1

    .line 122
    new-array v1, v0, [Lcom/oculus/appmanager/info/model/InstallResult;

    .line 123
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 124
    new-instance v0, Lcom/oculus/libraryapi/OCMSLibrary$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/libraryapi/OCMSLibrary$1;-><init>(Lcom/oculus/libraryapi/OCMSLibrary;[Lcom/oculus/appmanager/info/model/InstallResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 132
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/libraryapi/OCMSLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallCallback;)V

    .line 134
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 139
    aget-object p1, v1, p1

    return-object p1

    .line 137
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p2, Lcom/oculus/appmanager/info/model/InstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 136
    invoke-static {p1, v0, v1, p2}, Lcom/oculus/appmanager/info/model/InstallResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallResultError;)Lcom/oculus/appmanager/info/model/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public getAllApps()[Lcom/oculus/library/model/App;
    .locals 6

    .line 80
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForAllPackages()Landroid/net/Uri;

    move-result-object v1

    .line 81
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {v1, v0}, Lcom/oculus/library/utils/app/AppConverter;->extractAllFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .locals 1

    .line 232
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForAllDownloads()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getAllInstallsUri()Landroid/net/Uri;
    .locals 1

    .line 237
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForAllInstalls()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 6

    .line 52
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/oculus/libraryapi/OCMSLibrary;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null cursor received for query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {p1, v0}, Lcom/oculus/library/utils/app/AppConverter;->extractAllFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;

    move-result-object p1

    .line 59
    array-length v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 60
    sget-object p1, Lcom/oculus/libraryapi/OCMSLibrary;->TAG:Ljava/lang/String;

    const-string v0, "unexpected number of results in cursor"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 63
    aget-object p1, p1, v0

    return-object p1
.end method

.method public getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/oculus/libraryapi/OCMSLibrary;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v0

    .line 70
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 71
    iget-object v4, v3, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getQueryAllUri()Landroid/net/Uri;
    .locals 1

    .line 242
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForAllPackages()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getQueryByPackageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 247
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Landroid/os/ResultReceiver;)V
    .locals 4

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Lcom/oculus/libraryapi/OCMSLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    const-string v1, "result_receiver"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    iget-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 47
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->providerUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "refetch"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public save(Lcom/oculus/library/model/App;)V
    .locals 3

    if-nez p1, :cond_0

    .line 88
    sget-object p1, Lcom/oculus/libraryapi/OCMSLibrary;->TAG:Ljava/lang/String;

    const-string v0, "attempting to save null app"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {v0, p1}, Lcom/oculus/library/utils/app/AppConverter;->toContentValues(Lcom/oculus/library/model/App;)Landroid/content/ContentValues;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p1, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/UninstallCallback;)V
    .locals 2

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 176
    new-instance v1, Lcom/oculus/library/model/UninstallCallbackReceiver;

    invoke-direct {v1, p3}, Lcom/oculus/library/model/UninstallCallbackReceiver;-><init>(Lcom/oculus/library/model/UninstallCallback;)V

    .line 178
    invoke-virtual {v1}, Lcom/oculus/library/model/UninstallCallbackReceiver;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/oculus/libraryapi/OCMSLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p3

    const-string v1, "result_receiver"

    .line 176
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "extra_request_origin"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    iget-object p2, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 187
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->providerUri()Landroid/net/Uri;

    move-result-object p3

    const-string v1, "uninstall_package"

    .line 186
    invoke-virtual {p2, p3, v1, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/UninstallResult;
    .locals 3

    const/4 v0, 0x1

    .line 195
    new-array v1, v0, [Lcom/oculus/appmanager/info/model/UninstallResult;

    .line 196
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 197
    new-instance v0, Lcom/oculus/libraryapi/OCMSLibrary$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/libraryapi/OCMSLibrary$2;-><init>(Lcom/oculus/libraryapi/OCMSLibrary;[Lcom/oculus/appmanager/info/model/UninstallResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 205
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/libraryapi/OCMSLibrary;->uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/UninstallCallback;)V

    .line 207
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 211
    aget-object p1, v1, p1

    return-object p1

    .line 209
    :catch_0
    sget-object p2, Lcom/oculus/appmanager/info/model/UninstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/UninstallResultError;

    invoke-static {p1, p2}, Lcom/oculus/appmanager/info/model/UninstallResult;->creatForError(Ljava/lang/String;Lcom/oculus/appmanager/info/model/UninstallResultError;)Lcom/oculus/appmanager/info/model/UninstallResult;

    move-result-object p1

    return-object p1
.end method
