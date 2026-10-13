.class public interface abstract Lcom/oculus/libraryapi/LibraryProvider;
.super Ljava/lang/Object;
.source "LibraryProvider.java"


# virtual methods
.method public abstract cancelDownload(Ljava/lang/String;)Z
.end method

.method public abstract customDownloadAndInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
.end method

.method public abstract downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
.end method

.method public abstract downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;
.end method

.method public abstract getAllApps()[Lcom/oculus/library/model/App;
.end method

.method public abstract getAllDownloadsUri()Landroid/net/Uri;
.end method

.method public abstract getAllInstallsUri()Landroid/net/Uri;
.end method

.method public abstract getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
.end method

.method public abstract getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getQueryAllUri()Landroid/net/Uri;
.end method

.method public abstract getQueryByPackageUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract refresh(Landroid/os/ResultReceiver;)V
.end method

.method public abstract save(Lcom/oculus/library/model/App;)V
.end method

.method public abstract uninstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
.end method

.method public abstract uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallerResult;
.end method
