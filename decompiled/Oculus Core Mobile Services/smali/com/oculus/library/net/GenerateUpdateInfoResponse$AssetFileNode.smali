.class public Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;
.super Ljava/lang/Object;
.source "GenerateUpdateInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/GenerateUpdateInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetFileNode"
.end annotation


# instance fields
.field public checksumHash:Ljava/lang/String;

.field public file_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public is_required:Z

.field public size:J

.field public uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->id:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->file_name:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->uri:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->checksumHash:Ljava/lang/String;

    .line 57
    iput-wide p5, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->size:J

    .line 58
    iput-boolean p7, p0, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AssetFileNode;->is_required:Z

    .line 59
    return-void
.end method
