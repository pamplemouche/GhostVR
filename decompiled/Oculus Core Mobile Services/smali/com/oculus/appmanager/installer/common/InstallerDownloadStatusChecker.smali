.class public Lcom/oculus/appmanager/installer/common/InstallerDownloadStatusChecker;
.super Ljava/lang/Object;
.source "InstallerDownloadStatusChecker.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oculus/appmanager/installer/common/InstallerDownloadStatusChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/appmanager/installer/common/InstallerDownloadStatusChecker;->TAG:Ljava/lang/String;

    return-void
.end method
