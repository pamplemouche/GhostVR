.class public Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;
.super Ljava/lang/Object;
.source "GenerateAssetListAndBinIdResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileNode;,
        Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;,
        Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;,
        Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;,
        Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AppInfo;,
        Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AppBinaryInfo;
    }
.end annotation


# instance fields
.field public appBinaryInfo:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AppBinaryInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_binary_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
