.class public Lcom/facebook/common/manifest/AppBuildInfo;
.super Ljava/lang/Object;
.source "AppBuildInfo.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final buildPacificTimeString:Ljava/lang/String;

.field public final buildUTCTimestamp:J

.field public final gitBranch:Ljava/lang/String;

.field public final gitHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/common/manifest/AppBuildInfo;->gitHash:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/facebook/common/manifest/AppBuildInfo;->gitBranch:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lcom/facebook/common/manifest/AppBuildInfo;->buildUTCTimestamp:J

    .line 23
    iput-object p5, p0, Lcom/facebook/common/manifest/AppBuildInfo;->buildPacificTimeString:Ljava/lang/String;

    .line 24
    return-void
.end method
