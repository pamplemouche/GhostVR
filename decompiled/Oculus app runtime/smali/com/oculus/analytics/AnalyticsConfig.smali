.class public Lcom/oculus/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/analytics/AnalyticsConfig$Builder;
    }
.end annotation


# instance fields
.field public final mAnalytics2LoggerEnabled:Z

.field public final mDebugMode:Z

.field public final mFbAppId:Ljava/lang/String;

.field public final mFbAppSecret:Ljava/lang/String;

.field public final uploader:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/oculus/analytics/AnalyticsConfig;->mAnalytics2LoggerEnabled:Z

    .line 25
    iput-object p2, p0, Lcom/oculus/analytics/AnalyticsConfig;->mFbAppId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/oculus/analytics/AnalyticsConfig;->mFbAppSecret:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/oculus/analytics/AnalyticsConfig;->mDebugMode:Z

    .line 28
    iput-object p5, p0, Lcom/oculus/analytics/AnalyticsConfig;->uploader:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getFbAppId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsConfig;->mFbAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getFbAppSecret()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/oculus/analytics/AnalyticsConfig;->mFbAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public isAnalytics2LoggerEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/oculus/analytics/AnalyticsConfig;->mAnalytics2LoggerEnabled:Z

    return v0
.end method

.method public isDebugModeEnabled()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/oculus/analytics/AnalyticsConfig;->mDebugMode:Z

    return v0
.end method
