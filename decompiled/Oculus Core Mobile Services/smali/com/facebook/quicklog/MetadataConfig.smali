.class public abstract Lcom/facebook/quicklog/MetadataConfig;
.super Ljava/lang/Object;
.source "MetadataConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultConfig()Lcom/facebook/quicklog/MetadataConfig;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/quicklog/MetadataConfig$2;

    invoke-direct {v0}, Lcom/facebook/quicklog/MetadataConfig$2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getMetadataCategories(I)J
.end method
