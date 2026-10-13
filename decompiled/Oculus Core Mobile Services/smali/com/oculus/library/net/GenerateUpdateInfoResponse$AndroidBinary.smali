.class public Lcom/oculus/library/net/GenerateUpdateInfoResponse$AndroidBinary;
.super Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;
.source "GenerateUpdateInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/GenerateUpdateInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidBinary"
.end annotation


# instance fields
.field public apk_cert_signature:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public asset_files:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFiles;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public external_signatures:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public obb_binary:Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public version_code:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;-><init>()V

    return-void
.end method
