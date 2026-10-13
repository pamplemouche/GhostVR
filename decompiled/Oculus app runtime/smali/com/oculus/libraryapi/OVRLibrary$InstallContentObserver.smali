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

    .line 104
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 105
    iput-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->uri:Landroid/net/Uri;

    .line 106
    iput-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->listener:Lcom/oculus/libraryapi/OVRLibrary$InstallListener;

    .line 107
    iput-object p3, p0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 112
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getPackageFromInstallUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getErrorForInstallUri(Landroid/net/Uri;)I

    move-result v0

    .line 114
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getTimestampMsForInstallUri(Landroid/net/Uri;)J

    move-result-wide v1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, -0x2

    if-ne v0, p2, :cond_1

    .line 124
    invoke-static {p1, v1, v2}, Lcom/oculus/appmanager/info/model/InstallResult;->createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallResult;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v0}, Lcom/oculus/appmanager/info/model/InstallResultError;->fromInt(I)Lcom/oculus/appmanager/info/model/InstallResultError;

    move-result-object p2

    .line 125
    invoke-static {p1, v1, v2, p2}, Lcom/oculus/appmanager/info/model/InstallResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallResultError;)Lcom/oculus/appmanager/info/model/InstallResult;

    move-result-object p1

    .line 127
    :goto_0
    iget-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary$InstallContentObserver;->listener:Lcom/oculus/libraryapi/OVRLibrary$InstallListener;

    invoke-interface {p2, p1}, Lcom/oculus/libraryapi/OVRLibrary$InstallListener;->onInstall(Lcom/oculus/appmanager/info/model/InstallResult;)V

    return-void

    .line 118
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown content uri observed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OVRLibrary"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
