.class public Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams$RecentAppInfo;
.super Ljava/lang/Object;
.source "GraphQLVRLifecycleParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentAppInfo"
.end annotation


# instance fields
.field public final last_start_time:J

.field public final last_usage_time:J

.field public final package_name:Ljava/lang/String;

.field public final total_usage_time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams$RecentAppInfo;->package_name:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams$RecentAppInfo;->total_usage_time:J

    .line 57
    iput-wide p4, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams$RecentAppInfo;->last_start_time:J

    .line 58
    iput-wide p6, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams$RecentAppInfo;->last_usage_time:J

    .line 59
    return-void
.end method
