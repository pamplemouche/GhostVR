.class public Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileNode$AssetIAP;
.super Ljava/lang/Object;
.source "GenerateAssetListAndBinIdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetIAP"
.end annotation


# instance fields
.field public isViewerEntitled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_viewer_entitled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
