.class public Lcom/facebook/quicklog/AlwaysOnQPLConfig;
.super Ljava/lang/Object;
.source "AlwaysOnQPLConfig.java"

# interfaces
.implements Lcom/facebook/quicklog/QPLConfiguration;


# instance fields
.field private final mMetadataConfig:Lcom/facebook/quicklog/MetadataConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lcom/facebook/quicklog/MetadataConfig;->createDefaultConfig()Lcom/facebook/quicklog/MetadataConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/quicklog/AlwaysOnQPLConfig;->mMetadataConfig:Lcom/facebook/quicklog/MetadataConfig;

    return-void
.end method


# virtual methods
.method public getMetadataConfigForMarker(I)J
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/facebook/quicklog/AlwaysOnQPLConfig;->mMetadataConfig:Lcom/facebook/quicklog/MetadataConfig;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/MetadataConfig;->getMetadataCategories(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleRateForMarker(I)I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public randomlySample(I)I
    .locals 0

    .prologue
    .line 20
    return p1
.end method
