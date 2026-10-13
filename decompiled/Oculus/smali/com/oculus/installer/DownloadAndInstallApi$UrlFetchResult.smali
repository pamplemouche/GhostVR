.class public Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;
.super Ljava/lang/Object;
.source "DownloadAndInstallApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/installer/DownloadAndInstallApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UrlFetchResult"
.end annotation


# instance fields
.field public final mApkConfig:Lcom/oculus/appmanager/model/UpdateConfig;

.field public final mAppId:Ljava/lang/String;

.field public final mAssetConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/appmanager/model/UpdateConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mObbConfig:Lcom/oculus/appmanager/model/UpdateConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mPackageName:Ljava/lang/String;

.field public final mVersionCode:J


# direct methods
.method public constructor <init>(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p2    # Lcom/oculus/appmanager/model/UpdateConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/appmanager/model/UpdateConfig;",
            "Lcom/oculus/appmanager/model/UpdateConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/appmanager/model/UpdateConfig;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;->mApkConfig:Lcom/oculus/appmanager/model/UpdateConfig;

    .line 635
    iput-object p2, p0, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;->mObbConfig:Lcom/oculus/appmanager/model/UpdateConfig;

    .line 636
    iput-object p3, p0, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;->mAssetConfigs:Ljava/util/List;

    .line 637
    iput-object p4, p0, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;->mPackageName:Ljava/lang/String;

    .line 638
    iput-object p5, p0, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;->mAppId:Ljava/lang/String;

    .line 639
    iput-wide p6, p0, Lcom/oculus/installer/DownloadAndInstallApi$UrlFetchResult;->mVersionCode:J

    .line 640
    return-void
.end method
