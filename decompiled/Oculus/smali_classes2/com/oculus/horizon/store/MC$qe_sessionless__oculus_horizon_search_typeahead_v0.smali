.class public Lcom/oculus/horizon/store/MC$qe_sessionless__oculus_horizon_search_typeahead_v0;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qe_sessionless__oculus_horizon_search_typeahead_v0"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final incremental_search_enabled:J

.field public static final num_items:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->qe_sessionless__oculus_horizon_search_typeahead_v0:I

    sput v0, Lcom/oculus/horizon/store/MC$qe_sessionless__oculus_horizon_search_typeahead_v0;->__CONFIG__:I

    .line 135
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->qe_sessionless__oculus_horizon_search_typeahead_v0_incremental_search_enabled:J

    sput-wide v0, Lcom/oculus/horizon/store/MC$qe_sessionless__oculus_horizon_search_typeahead_v0;->incremental_search_enabled:J

    .line 140
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->qe_sessionless__oculus_horizon_search_typeahead_v0_num_items:J

    sput-wide v0, Lcom/oculus/horizon/store/MC$qe_sessionless__oculus_horizon_search_typeahead_v0;->num_items:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
