.class public Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdRequest$AppIdentifier;
.super Ljava/lang/Object;
.source "GenerateAssetListAndBinIdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIdentifier"
.end annotation


# instance fields
.field public final app_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field public final versionCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdRequest$AppIdentifier;->app_id:Ljava/lang/String;

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdRequest$AppIdentifier;->versionCode:Ljava/lang/String;

    .line 22
    return-void
.end method
