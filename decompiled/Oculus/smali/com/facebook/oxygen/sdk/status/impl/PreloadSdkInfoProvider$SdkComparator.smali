.class Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;
.super Ljava/lang/Object;
.source "PreloadSdkInfoProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SdkComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSdkTypePriority(Ljava/lang/Integer;)I
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 397
    const v0, 0x7fffffff

    :goto_0
    return v0

    .line 389
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 393
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 395
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public compare(Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 358
    iget-boolean v2, p1, Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;->isOperational:Z

    iget-boolean v3, p2, Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;->isOperational:Z

    if-eq v2, v3, :cond_2

    .line 359
    iget-boolean v2, p1, Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;->isOperational:Z

    if-eqz v2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    iget-boolean v2, p2, Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;->isOperational:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 364
    goto :goto_0

    .line 369
    :cond_2
    iget-object v2, p1, Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;->type$$CLONE:Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;->getSdkTypePriority(Ljava/lang/Integer;)I

    move-result v2

    .line 370
    iget-object v3, p2, Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;->type$$CLONE:Ljava/lang/Integer;

    invoke-direct {p0, v3}, Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;->getSdkTypePriority(Ljava/lang/Integer;)I

    move-result v3

    .line 372
    if-lt v2, v3, :cond_0

    .line 374
    if-ne v2, v3, :cond_3

    .line 375
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 377
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 350
    check-cast p1, Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;

    check-cast p2, Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/oxygen/sdk/status/impl/PreloadSdkInfoProvider$SdkComparator;->compare(Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;Lcom/facebook/oxygen/sdk/status/PreloadSdkInfo;)I

    move-result v0

    return v0
.end method
