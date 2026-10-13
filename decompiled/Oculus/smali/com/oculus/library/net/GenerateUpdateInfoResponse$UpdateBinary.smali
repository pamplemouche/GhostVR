.class public Lcom/oculus/library/net/GenerateUpdateInfoResponse$UpdateBinary;
.super Ljava/lang/Object;
.source "GenerateUpdateInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/GenerateUpdateInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateBinary"
.end annotation


# instance fields
.field public checksum_hash:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public size:J

.field public uri:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
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
