.class public Lcom/oculus/appmanager/installer/common/InstallerDownloadStatusChecker;
.super Ljava/lang/Object;
.source "InstallerDownloadStatusChecker.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;


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

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/errorreporting/ErrorReporter;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/appmanager/installer/common/InstallerDownloadStatusChecker;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/oculus/appmanager/installer/common/InstallerDownloadStatusChecker;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    .line 24
    return-void
.end method
