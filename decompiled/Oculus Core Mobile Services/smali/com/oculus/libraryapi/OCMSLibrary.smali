.class public Lcom/oculus/libraryapi/OCMSLibrary;
.super Ljava/lang/Object;
.source "OCMSLibrary.java"

# interfaces
.implements Lcom/oculus/libraryapi/LibraryProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/libraryapi/OCMSLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/libraryapi/OCMSLibrary;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/library/utils/app/AppConverter;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    .line 34
    return-void
.end method

.method private prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 281
    if-nez p1, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    .line 284
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 285
    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 287
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    if-eqz p3, :cond_0

    .line 112
    new-instance v1, Lcom/oculus/library/model/InstallerCallbackReceiver;

    invoke-direct {v1, p3}, Lcom/oculus/library/model/InstallerCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallerCallback;)V

    .line 113
    const-string v2, "result_receiver"

    .line 115
    invoke-virtual {v1}, Lcom/oculus/library/model/InstallerCallbackReceiver;->getReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/libraryapi/OCMSLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    .line 118
    const-string v1, "extra_request_origin"

    invoke-virtual {p2}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->providerUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "install_package"

    .line 122
    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 127
    return-void
.end method

.method public getAllApps()[Lcom/oculus/library/model/App;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForAllPackages()Landroid/net/Uri;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {v0, v1}, Lcom/oculus/library/utils/app/AppConverter;->extractAllFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 90
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public getAllInstallsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForAllInstalls()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    sget-object v0, Lcom/oculus/libraryapi/OCMSLibrary;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null cursor received for query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-object v2

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {v0, v3}, Lcom/oculus/library/utils/app/AppConverter;->extractAllFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;

    move-result-object v0

    .line 56
    array-length v1, v0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    .line 57
    sget-object v0, Lcom/oculus/libraryapi/OCMSLibrary;->TAG:Ljava/lang/String;

    const-string v1, "unexpected number of results in cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 60
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public refresh(Landroid/os/ResultReceiver;)V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v1, "result_receiver"

    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/libraryapi/OCMSLibrary;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    iget-object v1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 43
    invoke-static {}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->providerUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "refetch"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 44
    return-void
.end method

.method public save(Lcom/oculus/library/model/App;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    if-nez p1, :cond_0

    .line 97
    sget-object v0, Lcom/oculus/libraryapi/OCMSLibrary;->TAG:Ljava/lang/String;

    const-string v1, "attempting to save null app"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {v0, p1}, Lcom/oculus/library/utils/app/AppConverter;->toContentValues(Lcom/oculus/library/model/App;)Landroid/content/ContentValues;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/oculus/libraryapi/OCMSLibrary;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 103
    invoke-static {v2}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->uriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
