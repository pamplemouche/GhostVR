.class public Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFiles;
.super Ljava/lang/Object;
.source "GenerateAssetListAndBinIdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetFiles"
.end annotation


# instance fields
.field public edges:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AssetFileEdge;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "edges"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
