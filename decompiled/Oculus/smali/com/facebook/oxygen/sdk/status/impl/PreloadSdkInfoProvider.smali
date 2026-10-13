.class public Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider;
.super Ljava/lang/Object;
.source "PreloadSdkInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;
    }
.end annotation


# instance fields
.field private final mSdkComparator:Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;

    invoke-direct {v0}, Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;-><init>()V

    iput-object v0, p0, Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider;->mSdkComparator:Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;

    .line 42
    return-void
.end method
