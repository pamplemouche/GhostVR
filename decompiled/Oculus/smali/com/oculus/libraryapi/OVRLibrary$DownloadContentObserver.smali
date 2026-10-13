.class Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;
.super Landroid/database/ContentObserver;
.source "OVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/libraryapi/OVRLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadContentObserver"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final listener:Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;

.field final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 136
    iput-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->uri:Landroid/net/Uri;

    .line 137
    iput-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->listener:Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;

    .line 138
    iput-object p3, p0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->handler:Landroid/os/Handler;

    .line 139
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    .prologue
    .line 143
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getPackageFromDownloadUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getErrorForDownloadUri(Landroid/net/Uri;)I

    move-result v1

    .line 145
    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getTimestampMsForDownloadUri(Landroid/net/Uri;)J

    move-result-wide v2

    .line 146
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    :cond_0
    const-string v0, "OVRLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown content uri observed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_1
    const/4 v4, -0x2

    if-ne v1, v4, :cond_2

    .line 155
    invoke-static {v0, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/oculus/libraryapi/OVRLibrary$DownloadContentObserver;->listener:Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;

    invoke-interface {v1, v0}, Lcom/oculus/libraryapi/OVRLibrary$DownloadListener;->onDownloadComplete(Lcom/oculus/appmanager/info/model/InstallerResult;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {v1}, Lcom/oculus/appmanager/info/model/InstallerResultError;->fromInt(I)Lcom/oculus/appmanager/info/model/InstallerResultError;

    move-result-object v1

    .line 156
    invoke-static {v0, v2, v3, v1}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    goto :goto_1
.end method
