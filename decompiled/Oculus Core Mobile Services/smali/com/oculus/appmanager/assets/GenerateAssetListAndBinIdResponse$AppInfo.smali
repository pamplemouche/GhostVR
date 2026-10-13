.class public Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AppInfo;
.super Ljava/lang/Object;
.source "GenerateAssetListAndBinIdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public binary:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AndroidBinary;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "binary"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
