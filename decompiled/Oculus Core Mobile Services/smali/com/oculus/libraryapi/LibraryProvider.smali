.class public interface abstract Lcom/oculus/libraryapi/LibraryProvider;
.super Ljava/lang/Object;
.source "LibraryProvider.java"


# virtual methods
.method public abstract downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;Lcom/oculus/library/model/InstallerCallback;)V
.end method

.method public abstract getAllApps()[Lcom/oculus/library/model/App;
.end method

.method public abstract getAllInstallsUri()Landroid/net/Uri;
.end method

.method public abstract getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;
.end method

.method public abstract refresh(Landroid/os/ResultReceiver;)V
.end method

.method public abstract save(Lcom/oculus/library/model/App;)V
.end method
