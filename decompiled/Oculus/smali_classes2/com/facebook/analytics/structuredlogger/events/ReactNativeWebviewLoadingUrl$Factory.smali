.class public Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrl$Factory;
.super Ljava/lang/Object;
.source "ReactNativeWebviewLoadingUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/facebook/analytics/structuredlogger/base/Logger;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrl;
    .locals 1

    .prologue
    .line 15
    invoke-static {p0}, Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;->newInstance(Lcom/facebook/analytics/structuredlogger/base/Logger;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;

    move-result-object v0

    return-object v0
.end method
