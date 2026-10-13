.class public Lcom/oculus/analytics/AnalyticsConfig$Builder;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/analytics/AnalyticsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mAnalytics2LoggerEnabled:Z

.field public mDebugMode:Z

.field public mFbAppId:Ljava/lang/String;

.field public mFbAppSecret:Ljava/lang/String;

.field public mUploader:Ljava/lang/Class;
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
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcom/oculus/analytics/SimpleUploader;

    iput-object v0, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mUploader:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/analytics/AnalyticsConfig;
    .locals 7

    .line 80
    new-instance v6, Lcom/oculus/analytics/AnalyticsConfig;

    iget-boolean v1, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mAnalytics2LoggerEnabled:Z

    iget-object v2, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mFbAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mFbAppSecret:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mDebugMode:Z

    iget-object v5, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mUploader:Ljava/lang/Class;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oculus/analytics/AnalyticsConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    return-object v6
.end method

.method public setAnalytics2LoggerEnabled(Z)Lcom/oculus/analytics/AnalyticsConfig$Builder;
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mAnalytics2LoggerEnabled:Z

    return-object p0
.end method

.method public setDebugMode(Z)Lcom/oculus/analytics/AnalyticsConfig$Builder;
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mDebugMode:Z

    return-object p0
.end method

.method public setFbAppId(Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsConfig$Builder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mFbAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setFbAppSecret(Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsConfig$Builder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mFbAppSecret:Ljava/lang/String;

    return-object p0
.end method

.method public setUploader(Ljava/lang/Class;)Lcom/oculus/analytics/AnalyticsConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/analytics2/logger/Uploader;",
            ">;)",
            "Lcom/oculus/analytics/AnalyticsConfig$Builder;"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/oculus/analytics/AnalyticsConfig$Builder;->mUploader:Ljava/lang/Class;

    return-object p0
.end method
