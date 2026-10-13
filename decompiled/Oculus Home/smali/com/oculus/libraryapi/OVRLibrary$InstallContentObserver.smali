.class Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;
.super Landroid/database/ContentObserver;
.source "OVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/libraryapi/OVRLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallContentObserver"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final listener:Lcom/oculus/libraryapi/OVRLibrary$InstallListener;

.field final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$InstallListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/oculus/libraryapi/OVRLibrary$InstallListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 102
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 103
    iput-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->uri:Landroid/net/Uri;

    .line 104
    iput-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->listener:Lcom/oculus/libraryapi/OVRLibrary$InstallListener;

    .line 105
    iput-object p3, p0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->handler:Landroid/os/Handler;

    .line 106
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 110
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getPackageFromInstallUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getErrorForInstallUri(Landroid/net/Uri;)I

    move-result v0

    .line 112
    .local v0, "errorCode":I
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getTimestampMsForInstallUri(Landroid/net/Uri;)J

    move-result-wide v4

    .line 113
    .local v4, "timestampMs":J
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    :cond_0
    const-string v3, "OVRLibrary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown content uri observed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 122
    invoke-static {v2, v4, v5}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v1

    .line 125
    .local v1, "installerResult":Lcom/oculus/appmanager/info/model/InstallerResult;
    :goto_1
    iget-object v3, p0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->listener:Lcom/oculus/libraryapi/OVRLibrary$InstallListener;

    invoke-interface {v3, v1}, Lcom/oculus/libraryapi/OVRLibrary$InstallListener;->onInstall(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    goto :goto_0

    .line 124
    .end local v1    # "installerResult":Lcom/oculus/appmanager/info/model/InstallerResult;
    :cond_2
    invoke-static {v0}, Lcom/oculus/appmanager/info/model/InstallerResultError;->fromInt(I)Lcom/oculus/appmanager/info/model/InstallerResultError;

    move-result-object v3

    .line 123
    invoke-static {v2, v4, v5, v3}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v1

    goto :goto_1
.end method
