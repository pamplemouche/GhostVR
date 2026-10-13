.class Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;
.super Ljava/lang/Object;
.source "BatchDynamicMetadataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestInfo"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMarauderTier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;->mMarauderTier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public collectRequestInfo(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;->mMarauderTier:Ljava/lang/String;

    const-string v1, "tier"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "sent_time"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "n/a"

    :goto_0
    const-string v1, "carrier"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$RequestInfo;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 91
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "none"

    :goto_1
    const-string v1, "conn"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
